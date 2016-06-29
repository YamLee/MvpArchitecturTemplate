package ${applicationPackage + logicViewPackageName};

<#if applicationPackage??>
import ${applicationPackage}.view.BaseUiLogicView;
</#if>
/**
 * Auto Created,You need modify
 */
public interface ${logicViewClass} extends BaseUiLogicView {
    interface InteractionListener {

    }
}
