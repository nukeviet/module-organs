<!-- BEGIN: main -->
<div class="panel panel-primary">
    <div class="panel-heading">
        <h1 class="h2">{DATA.title}</h1>
    </div>
    <div class="panel-body">
        <ul class="list-unstyled">
            <!-- BEGIN: address -->
            <li>
                <strong>{LANG.vieworg_address}:</strong> {DATA.address}
            </li>
            <!-- END: address -->
            <!-- BEGIN: phone -->
            <li>
                <strong>{LANG.vieworg_phone}:</strong> {DATA.phone}
            </li>
            <!-- END: phone -->
            <!-- BEGIN: fax -->
            <li>
                <strong>{LANG.vieworg_fax}:</strong> {DATA.fax}
            </li>
            <!-- END: fax -->
            <!-- BEGIN: website -->
            <li>
                <strong>{LANG.vieworg_website}:</strong> {DATA.website}
            </li>
            <!-- END: website -->
        </ul>
        <!-- BEGIN: about -->
        <p class="short-desc">{DATA.description}</p>
        <!-- END: about -->

        <p class="text-center">
            {admin_link}
        </p>

        <!-- BEGIN: person -->
        <hr />
        <div class="grid-org-person">
            <!-- BEGIN: loop -->
            <div class="grid-org-person-item">
                <div class="thumbnail">
                    <div class="thumbnail-wraper">
                        <a href="{ROW.link}" title="{ROW.name}">
                            <img class="imgthumbnail" src="{ROW.photo}" style="max-width: {WIDTH}px;aspect-ratio: {WIDTH} / {HEIGHT};" alt="{ROW.name}">
                        </a>
                    </div>
                    <div class="caption text-center">
                        <h3><a href="{ROW.link}" title="{ROW.name}">{ROW.name}</a></h3>
                        <p>
                            {ROW.position}<!-- BEGIN: birthday --><br /> {ROW.birthday}<!-- END: birthday -->
                        </p>
                    </div>
                </div>
            </div>
            <!-- END: loop -->
        </div>
        <!-- END: person -->
    </div>
</div>

<!-- BEGIN: pages -->
<div class="text-center">
    {html_pages}
</div>
<!-- END: pages -->
<script type="text/javascript">
$(document).ready(function() {
    var showChar = 500;
    var ellipsestext = "...";
    var moretext = $.trim("{LANG.moretext}");
    var lesstext = $.trim("{LANG.lesstext}");
    var content = $('.short-desc').html();
    if ($('.short-desc').length) {
        if(content.length > showChar) {

            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);

            var html = '<span class="teaser">' + c + '</span><span class="moreellipses">' + ellipsestext + '</span><span class="morecontent"><span>' + h + '</span></span><a href="#" class="morelink">' + moretext + '</a>';

            $('.short-desc').addClass('is-collapsed').html(html);
        }
    }
    $(document).on('click', '.short-desc .morelink', function(){
        var $link = $(this);
        var $desc = $link.closest('.short-desc');

        if ($link.hasClass('less')) {
            $link.removeClass('less').html(moretext);
        } else {
            $link.addClass('less').html(lesstext);
        }

        $desc.find('.morecontent > span').toggle();
        $desc.find('.moreellipses').toggle();
        return false;
    });
});
</script>
<!-- END: main -->
