<?xml version="1.0"?>
<recipe>
<#--<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>-->
    <#--<dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>-->
<#--</#if>-->

<#--<#if (buildApi gte 22) && appCompat && !(hasDependency('com.android.support:design'))>-->
    <#--<dependency mavenUrl="com.android.support:design:${buildApi}.+"/>-->
<#--</#if>-->

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>

    <#--<merge from="root/res/values/dimens.xml"-->
           <#--to="${escapeXmlAttribute(resOut)}/values/dimens.xml"/>-->

    <merge from="root/res/values/strings.xml.ftl"
           to="${escapeXmlAttribute(resOut)}/values/strings.xml"/>

    <instantiate from="root/res/layout/fragment_mvp.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>

    <instantiate from="root/src/app_package/MvpActivity.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(activityPackageName)}/${activityClass}.java"/>

    <instantiate from="root/src/app_package/MvpFragment.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(fragmentPackageName)}/${fragmentClass}.java"/>

    <instantiate from="root/src/app_package/MvpView.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(logicViewPackageName)}/${logicViewClass}.java"/>

    <instantiate from="root/src/app_package/MvpPresenter.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(presenterPackageName)}/${presenterClass}.java"/>

    <open file="${escapeXmlAttribute(srcOut)}/${slashedPackageName(presenterPackageName)}/${presenterClass}.java"/>

</recipe>
