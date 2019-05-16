function Run_VBSBAT_from_input_file_with_timer(file_full_path)
%%
% Created by Kyle Gorkowski [LAPTOP-A4QKFAC8] on 2019-Mar-26 12:55 PM
% Copyright 2019 Kyle Gorkowski 
%% 
% run via camand line system('BAT_simulate "C:\Users\kkgor\Google Drive\Matlab_Code\AIOMFAC\BAT_code_v1\runtime_programs\VBSBAT_test_aPsoa.csv"')

if not(exist('file_full_path'))
    % set default options
    [file,path] = uigetfile('*.*','Select VBSBAT input file');
    file_full_path=[path file];
end

% move to file location
back_slashes=strfind(file_full_path,'\');
cd(file_full_path(1:back_slashes(end)))

% read input file
simulation_input=read_input_file(file_full_path);

% make output folder
mkdir('Outputs')
cd('Outputs')



%% start timer figure
BAT_timer_fig = figure(...
        'Name',['BAT'], 'Units', 'inches',...
        'Position', [.5 6 2.5 1],...
        'Color',[0.027450980392157 0.149019607843137 0.235294117647059],...
        'NumberTitle', 'off','MenuBar', 'none');%,...
%         'NumberTitle', 'off',...
%         'Resize', 'off',...
%         'MenuBar', 'none' );
BAT_logo=load_bat_logo;
axes1 = axes('Parent',BAT_timer_fig,...
    'Position',[0 0 1 .6], 'Visible','off');
hold(axes1,'on');
axis(axes1,'tight');
axis(axes1,'ij');

image(BAT_logo,'Parent',axes1);

text_anno=annotation(BAT_timer_fig,'textbox',...
    [0.00115207373271889 0.59375 0.997695852534562 0.395833333333333],...
    'Color',[1 1 1],...
    'VerticalAlignment','middle',...
    'String',{'Simulation starting...'},...
    'Interpreter','none',...
    'FitBoxToText','off',...
    'EdgeColor','none');
drawnow

%% start simulations
total_sims=size(simulation_input,2);
progressbartext('BAT simulations','no');
for i=1:total_sims
    
    
    
    % check if effective Csat needs to be calculated
    if sum(simulation_input(i).system.Csat_j_value)==0
        if sum(simulation_input(i).system.optional_Cliquid_ugPm3)>0 % checks to make sure those values are non-zero
            
            if isfield(simulation_input(i).system,'calculate_Csat_j_with_aw')
                aw_to_convert_at=simulation_input(i).system.calculate_Csat_j_with_aw;
            else
                aw_to_convert_at=0;
            end
            % estimates effective Csat value at dry conditions
            [Csat_approx]=VBS_equilibration_extractCsat_withLLEpartition_KGv2(simulation_input(i).system.optional_Cliquid_ugPm3, simulation_input(i).system.optional_Cstar_ugPm3, ...
                aw_to_convert_at, simulation_input(i).system.Molecular_weight, simulation_input(i).system.O2C_values, simulation_input(i).system.H2C_values,...
                simulation_input(i).system.BAT_functional_group, simulation_input(i).McGlashan_refinement_mode);
        else
            error('needs input of eff. Csat_j (ug/m3) or Cstar (ug/m3) and C^liquid (ug/m3), [if you want only the condensed phase set Csat_j to small value i.e. 10^-10]')
        end

    else
        Csat_approx=simulation_input(i).system.Csat_j_value;
    end
    
    
    [C_OA_PM, Caq_PM, kappaHGF, details]=VBS_BAT_simulation_v2(...
    Csat_approx, simulation_input(i).system.C_OM_ugPm3, ...
    simulation_input(i).system.O2C_values, simulation_input(i).system.H2C_values, simulation_input(i).system.Molecular_weight, ...
    simulation_input(i).water_activity, simulation_input(i).system.BAT_functional_group, simulation_input(i).McGlashan_refinement_mode, simulation_input(i).VBSBAT_options,simulation_input(i).run_name );
    
    % save out simulation as matlab file
    simulation_input_settings=simulation_input(i);
    save(['VBSBAT_sim_' simulation_input(i).run_name '.mat'],...
        'C_OA_PM', 'Caq_PM', 'kappaHGF', 'details','Csat_approx',...
        'simulation_input_settings')

    
    %update timer
    timer_text=progressbartext(i/total_sims,'no');
    if not(isempty(timer_text))
        text_anno.String=timer_text;
        drawnow
    end

end
close(BAT_timer_fig)


cd ../