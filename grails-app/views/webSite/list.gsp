<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <meta content="master" name="layout"/>
    <r:require modules="community"/>
</head>

<body>

<div id="content" class="content-aside" role="main">

    <g:render template="/community/sideNav"/>

    <div id="main" class="websites">
        <section class="listing">
            <article>
                <flash:message flash="${flash}" />
                <g:link action="create">Add Web Site</g:link>
            </article>

            <g:render template="webSiteLarge" collection="${featuredWebSiteInstanceList}" var="webSiteInstance"/>

            <div class="colset3">
                <g:each in="${webSiteInstanceList}" var="webSiteInstance" status="idx">
                    <article class="col${(idx % 3) + 1}">
                        <a href="#" class="like">+1</a>

                        <h3><a href="#"><wiki:shorten text="${webSiteInstance?.title?.encodeAsHTML()}" length="20" />
                            <small><wiki:shorten text="${webSiteInstance?.shortDescription?.encodeAsHTML()}" length="50" /></small>
                        </a></h3>

                        <div class="img" style="height: 130px; overflow: hidden;"><bi:hasImage bean="${webSiteInstance}">
                            <a href="${webSiteInstance.url.encodeAsHTML()}" target="_blank"><bi:img size="large"
                                                                                                    bean="${webSiteInstance}"/></a>
                        </bi:hasImage></div>
                    </article>
                </g:each>
            </div>

        </section>
    </div>
</div>

</body>
</html>