CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem   
   
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1     
   num_nod_per_el1       num_side_ss1      num_side_ss2      num_nod_ns1       num_nod_ns2       num_nod_var       num_info   �         api_version       @��H   version       @��H   floating_point_word_size            	file_size               title         
out_AEE.e      maximum_name_length                    
time_whole                            @�   	eb_status                             <   eb_prop1               name      ID              @   	ns_status         	                    D   ns_prop1      	         name      ID              L   	ss_status         
                    T   ss_prop1      
         name      ID              \   coordx                      X      d   coordy                      X      �   coordz                      X         eb_names                       $      l   ns_names      	                 D      �   ss_names      
                 D      �   
coor_names                         d      	   connect1                  	elem_type         EDGE2         P      	|   elem_num_map                    (      	�   elem_ss1                          	�   side_ss1                          	�   elem_ss2                          	�   side_ss2                          
    node_ns1                          
   node_ns2                          
   vals_nod_var1                          X      @�   name_nod_var                       $      
   info_records                      6�      
0                                         ?�������?ə�����?�333333?ٙ�����?�      ?�333333?�ffffff?陙����?�������?�                                                                                                                                                                                                                                                                                              left                             right                                                                                                                                                                                  	   	   
   
                              	   
         
         Time                                ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               AEEtest.i                                                                                                                                                         ### Version Info ###                                                             Framework Information:                                                           SVN Revision:            12907                                                   PETSc Version:           3.3.0                                                   Current Time:            Tue Aug 21 11:46:01 2012                                Executable Timestamp:    Tue Aug 21 11:42:30 2012                                                                                                                                                                                                  ### Input File ###                                                                                                                                                [BCs]                                                                                                                                                               [./Top_Temperature]                                                                type                         = NeumannBC                                         boundary                     = 'left right'                                      save_in                      =                                                   value                        = 0                                                 variable                     = Time                                            [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-15                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = -snes_converged_reason                          petsc_options_iname            =                                                 petsc_options_value            =                                                 scheme                         = BDF2                                            type                           = AdaptiveErrorEstimateTransient                  _mesh                          = 0x7fe563849a00                                  abort_on_solve_fail            = 1                                               dt                             = 0.01                                            dtmax                          = 1e+30                                           dtmin                          = 0                                               e_max                          = 10                                              e_tol                          = 1                                               end_time                       = 1e+30                                           growth_factor                  = 2                                               max_increase                   = 1e+09                                           n_startup_steps                = 0                                               num_steps                      = 4                                               predictor_scale                = 1                                               restart_file_base              =                                                 scaling_parameter              = 0.8                                             ss_check_tol                   = 1e-17                                           ss_tmin                        = 0                                               start_adapting                 = 2                                               start_time                     = 0                                               steps_between_increase         = 1                                               sync_times                     = -1                                              time_dt                        =                                                 time_period_ends               =                                                 time_period_starts             =                                                 time_periods                   =                                                 time_t                         =                                                 trans_ss_check                 = 1                                               use_AB2                        = 1                                               use_littlef                    = 1                                             []                                                                                                                                                                [Functions]                                                                                                                                                         [./func]                                                                           type                         = ParsedFunction                                    vals                         =                                                   value                        = 2.0*t                                             vars                         =                                                 [../]                                                                          []                                                                                                                                                                [Kernels]                                                                                                                                                           [./func_time]                                                                      type                         = UserForcingFunction                               block                        =                                                   function                     = func                                              save_in                      =                                                   variable                     = Time                                            [../]                                                                                                                                                             [./t_time]                                                                         type                         = TimeDerivative                                    block                        =                                                   lumping                      = 0                                                 save_in                      =                                                   variable                     = Time                                            [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  =                                                 uniform_refine                 = 0                                               ghosted_boundaries             =                                                 ghosted_boundaries_inflation   =                                                 patch_size                     = 40                                              skip_partitioning              = 0                                               type                           = GeneratedMesh                                   block_id                       =                                                 block_name                     =                                                 boundary_id                    =                                                 boundary_name                  =                                                 centroid_partitioner_direction =                                                 construct_side_list_from_node_list = 0                                           partitioner                    =                                                 second_order                   = 0                                               dim                            = 1                                               elem_type                      =                                                 nx                             = 10                                              ny                             = 1                                               nz                             = 1                                               xmax                           = 1                                               xmin                           = 0                                               ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Output]                                                                           elemental_as_nodal             = 0                                               exodus                         = 1                                               exodus_inputfile_output        = 1                                               file_base                      = out_AEE                                         gmv                            = 0                                               gnuplot_format                 = ps                                              interval                       = 1                                               iteration_plot_start_time      = 1.79769e+308                                    max_pps_rows_screen            = 0                                               nemesis                        = 0                                               num_restart_files              = 0                                               output_displaced               = 0                                               output_initial                 = 1                                               output_solution_history        = 0                                               output_variables               =                                                 perf_log                       = 1                                               postprocessor_csv              = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               screen_interval                = 1                                               show_setup_log_early           = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               xda                            = 0                                             []                                                                                                                                                                [Variables]                                                                                                                                                         [./Time]                                                                           block                        =                                                   family                       = LAGRANGE                                          initial_condition            = 0                                                 order                        = FIRST                                             scaling                      = 1                                                 initial_from_file_timestep   = 2                                                 initial_from_file_var        =                                                 [../]                                                                          []                                                                                                                                                                                  ?�z�G�{?*6��C(?*6��C(?*6��C)?*6��C+?*6��C&?*6��C+?*6��C)?*6��C*?*6��C*?*6��C)?*6��C+?�z�G�{?Ay윽�?Ay윽�?Ay윽�?Ay윽�?Ay윽�?Ay윽�?Ay윽�?Ay윽�?Ay윽�?Ay윽�?Ay윽�?��� ?[��P�?[��P�?[��P�?[��P�?[��P�?[��P�?[��P�?[��P�?[��P�?[��P�?[��P�?�b3ґ�?��u@h�q?��u@h�q?��u@h�o?��u@h�n?��u@h�q?��u@h�o?��u@h�p?��u@h�q?��u@h�p?��u@h�p?��u@h�o