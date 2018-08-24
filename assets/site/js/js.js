$(document).ready(function () {
    var tabs = '[data-toggle="tabs"]',
        tabsList = '[data-tabs="list"]',
        tabsItem = '[data-tabs="item"]';

    $(tabsList + ' a').click(function (event) {
        event.preventDefault();

        el = $(this);
        if (el.hasClass('active')) return false;

        id = el.attr('href');
        par = el.closest(tabs);
        list = el.closest(tabsList);

        list.find('a').removeClass('active');
        el.addClass('active');

        par.find(tabsItem).hide();
        $(id).fadeIn(500);

        return false;
    });
    $('.catalog-item').click(function (event) {
        //if ($(event.target).closest('[data-toggle]').length) return false;
    });
    $('[data-hreftab]').click(function () {
        el = $(this);
        href = el.attr('data-hreftab');
        target = 'a[href="' + href + '"]';
        $(target).click();
        $('html,body').animate({
            scrollTop: $(target).offset().top - 50
        }, 500);
    });

    /* pmenu */
    $('.pmenuBtn').click(function () {
        el = $('.pmenu');
        if (el.hasClass('_open')) el.removeClass('_open');
        else el.addClass('_open');
    });
    /* tmenu */
    $('.tmenuBtnn').click(function () {
        el = $('.tmenu');
        if (el.hasClass('_open')) el.removeClass('_open');
        else el.addClass('_open');
    });
    /* filter */
    $('.filterBtn').click(function () {
        el = $('.filter-form');
        if (el.hasClass('_open')) el.removeClass('_open');
        else el.addClass('_open');
    });
});
