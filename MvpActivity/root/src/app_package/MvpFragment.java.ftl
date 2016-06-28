package ${fragmentPackageName};

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

<#if applicationPackage??>
import  ${applicationPackage}.R;
import  ${applicationPackage}.di.components.${daggerComponentClass};
import  ${applicationPackage}.ui.BaseFragment;
import  ${applicationPackage}t.ui.custom.AppBar;
</#if>

/**
 *  Auto create,you need modify
 */
public class ${fragmentClass} extends BaseFragment<${presenterClass}> implements ${logicViewClass} {

    public static ${fragmentClass}  createFragment() {
        ${fragmentClass}  fragment = new ${fragmentClass}();
        return fragment;
    }


    @Override
    public void onInitAppBar(AppBar appBar) {
        super.onInitAppBar(appBar);
        appBar.setTitle("");
    }

    @Override
    protected boolean onFragmentBackPressed() {
        presenter.handleBack();
        return super.onFragmentBackPressed();
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity != null) {
            getComponent(${daggerComponentClass}.class).inject(this);
            presenter.setView(this);
            presenter.setListener((InteractionListener) activity);
        }
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.${layoutName}, null);
        return view;
    }


}
