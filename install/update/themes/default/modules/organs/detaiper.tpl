<!-- BEGIN: main -->
<div class="panel panel-primary">
    <div class="panel-heading">
        {LANG.infor_person}
    </div>
    <div class="panel-body">
        <div class="d-flex flex-dir">
            <div class="flex-avatar text-center">
                <!-- BEGIN: photo -->
                    <a href="javascript:void(0)"><img src="{DATA.photo_thumb}" class="img-thumbnail" data-width="{DATA.imginfo.width}" data-src="{DATA.imgsrc}" onclick='modalShow("", "<img style=\"max-width: 500px\" src=" + $(this).data("src") + " width=" + $(this).data("width") + " />" );' style="max-width: {WIDTH}px" /></a>
                <!-- END: photo -->
                <!-- BEGIN: no_photo -->
                    <img src="{DATA.photo_thumb}" class="img-thumbnail" style="max-width: {WIDTH}px" />
                <!-- END: no_photo -->
            </div>
            <div class="flex-des">
                <h2 class="font-size-h2 hidden"><span>{LANG.infor_basic}</span></h2>
                <p><b>{LANG.vieworg_name}: </b>{DATA.name}<p>
                <p><b>{LANG.vieworg_position}: </b>{DATA.position}<p>
                <!-- BEGIN: position_other -->
                    <p><b>{LANG.vieworg_position_other}: </b>{DATA.position_other}<p>
                <!-- END: position_other -->
                <p><b>{LANG.vieworg_ofogran}: </b><a href="{DATA.ofogran_url}" title="{DATA.ofogran}">{DATA.ofogran}</a><p>
                <p><b>{LANG.vieworg_birthday}: </b>{DATA.birthday}<p>

            </div>
        </div>
        <!-- BEGIN: other -->
        <h2 class="font-size-h2"><span>{LANG.infor_other}</span></h2>
        <div>
            <ul class="d-grid">
                <!-- BEGIN: place_birth -->
                    <li><b>{LANG.vieworg_place_birth}: </b>{DATA.place_birth}</li>
                <!-- END: place_birth -->
                <!-- BEGIN: dayparty -->
                    <li><b>{LANG.vieworg_dayparty}: </b>{DATA.dayparty}</li>
                <!-- END: dayparty -->
                <!-- BEGIN: dayinto -->
                    <li><b>{LANG.vieworg_dayinto}: </b>{DATA.dayinto}</li>
                <!-- END: dayinto -->
                <!-- BEGIN: email -->
                    <li><b>{LANG.vieworg_email}: </b><a href="mailto:{DATA.email}" title="Mail to {DATA.email}">{DATA.email}</a></li>
                <!-- END: email -->
                <!-- BEGIN: phone -->
                    <li><b>{LANG.vieworg_phone}: </b>{DATA.phone}</li>
                <!-- END: phone -->
                <!-- BEGIN: mobile -->
                    <li><b>{LANG.vieworg_mobile}: </b>{DATA.mobile}</li>
                <!-- END: mobile -->
                <!-- BEGIN: phone_ext -->
                    <li><b>{LANG.vieworg_phone_ext}: </b>{DATA.phone_ext}</li>
                <!-- END: phone_ext -->
                <!-- BEGIN: marital_status -->
                    <li><b>{LANG.vieworg_marital_status}: </b>{DATA.marital_status}</li>
                <!-- END: marital_status -->
                <!-- BEGIN: address -->
                    <li><b>{LANG.viewper_address}: </b>{DATA.address}</li>
                <!-- END: address -->
                <!-- BEGIN: professional -->
                    <li><b>{LANG.vieworg_professional}: </b>{DATA.professional}</li>
                <!-- END: professional -->
                <!-- BEGIN: political -->
                    <li><b>{LANG.vieworg_political}: </b>{DATA.political}</li>
                <!-- END: political -->
            </ul>
        </div>
        <!-- END: other -->
        <!-- BEGIN: description -->
        <h2 class="font-size-h2"><span>{LANG.infor_biography}</span></h2>
        <div class="text-break">
            {DATA.description}
        </div>
        <!-- END: description -->
        <div class="text-center">
            {admin_link}
        </div>
        <br />
    </div>
</div>
<!-- END: main -->
