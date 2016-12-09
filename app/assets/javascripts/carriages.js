$(document).on('turbolinks:load', function() {
    $('.new_carriage').change('turbolinks:change',function() {
        var type;
        type = $(this).find('#carriage_type').val();

        if (type == 'CoupeCarriage') {
            $('.sd').hide();
            $('.sv').hide();
            $('.eco').hide();
            $('.coupe').show();
        }
        if (type == 'SedentaryCarriage') {
            $('.coupe').hide();
            $('.sv').hide();
            $('.eco').hide();
            $('.sd').show();
        }
        if (type == 'SvCarriage') {
            $('.coupe').hide();
            $('.sd').hide();
            $('.eco').hide();
            $('.sv').show();
        }
        if (type == 'EconomyCarriage') {
            $('.coupe').hide();
            $('.sd').hide();
            $('.sv').hide();
            $('.eco').show();
        }
    });
});