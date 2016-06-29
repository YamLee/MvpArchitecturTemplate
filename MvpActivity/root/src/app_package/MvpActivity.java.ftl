package ${applicationPackage + activityPackageName};

import android.os.Bundle;

<#if applicationPackage??>
import ${applicationPackage}.di.HasComponent;
import ${applicationPackage}.di.components.Dagger${daggerComponentClass};
import ${applicationPackage}.di.components.${daggerComponentClass};
import ${applicationPackage}.di.modules.ActivityModule;
import ${applicationPackage}.ui.BaseActivity;
import ${applicationPackage}.ui.fragment.${fragmentPackageName + fragmentClass};
import ${applicationPackage}.view.${logicViewPackageName + logicViewClass};
</#if>

/**
 * Auto create,you need modify
 */
public class ${activityClass} extends BaseActivity implements HasComponent<${daggerComponentClass}>,
        ${logicViewClass}.InteractionListener {


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initFragment(${fragmentClass}.createFragment());
    }

    @Override
    public ${daggerComponentClass} getComponent() {
        return  Dagger${daggerComponentClass}.builder()
                .applicationComponent(getApplicationComponent())
                .activityModule(new ActivityModule(this))
                //you need add module here by hand write
                .build();
    }
}
