package com.soict.project_exam.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@ComponentScan(basePackages = "com.soict.project_exam.configs")
public class TilesConfig implements WebMvcConfigurer {

    // cau hinh file xml
    @Bean
    public TilesConfigurer  tilesConfigurer(){
        TilesConfigurer tilesConfigurer=new TilesConfigurer();
        //TilesView 3
        tilesConfigurer.setDefinitions("/WEB-INF/tiles.xml");
        tilesConfigurer.setCheckRefresh(true);
        return tilesConfigurer;
    }

    // phan giai view
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry){
        TilesViewResolver viewResolver=new TilesViewResolver();
        registry.viewResolver(viewResolver);
    }

    /*@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler()
    }*/
}
