package ${applicationPackage + presenterPackageName};

import javax.inject.Inject;

<#if applicationPackage??>
import ${applicationPackage}.presenter.BasePresenter;
import ${applicationPackage + logicViewPackageName}.${logicViewClass};
</#if>
/**
 * Auto Created
 */
public class ${presenterClass} extends BasePresenter {
    private ${logicViewClass} view;
    private ${logicViewClass}.InteractionListener listener;

    @Inject
    public ${presenterClass}(${logicViewClass} view) {
        this.view = view;
    }

    public void setView(${logicViewClass} view) {
        this.view = view;
    }

    public void setListener(${logicViewClass}.InteractionListener listener) {
        this.listener = listener;
    }

    public void handleBack() {

    }
}
