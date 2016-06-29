package ${applicationPackage + logicViewPackageName};

<#if applicationPackage??>
import ${applicationPackage}.view.BaseUiLogicView;
</#if>
/**
 * Created by yamlee on 6/28/16.
 */
public interface ${logicViewClass} extends BaseUiLogicView {
    interface InteractionListener {

    }
}
