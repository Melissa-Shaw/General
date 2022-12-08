function flick_through_figures(pause_time)

[figures, pathname,]=uigetfile('directory','*.fig','Multiselect','on');

figure_size = get(0,'Screensize');

for x = 1:length(figures)
    Multi_Figs = [pathname,filesep,figures{x}];
    Op = openfig(Multi_Figs);
    set(gcf,'Position',figure_size);
    pause(pause_time);
    close gcf
end

end