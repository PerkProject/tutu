$(document).on('turbolinks:load', function() {
    $('a.edit_train').click(function(e) {
        e.preventDefault();

        var station_id;
        var form;
        var title;
        station_id = $(this).data('trainId');
        form = $('#edit_train_' + station_id);
        title = $('#train_number_' + station_id);

        if (!$(this).hasClass('cancel')) {

            $(this).html('Отмена');
            $(this).addClass('cancel');
        } else {

            $(this).html('Редактировать');
            $(this).removeClass('cancel');
        }

        form.toggle();
        title.toggle();
    });
});