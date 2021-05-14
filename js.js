var temp=0;
$(function(){
    $(".table_id").on("click", "td", function() {
        if (temp==0)   // возможность отключить подключение класса active, изменив переменную
        {
            var c=(this).getAttribute('data-status');
            if (c==0)  // проверка, что день не занят, чтоб кнопка появлялась только по клику на свободный день
                // и чтоб классы active не добавлялись к занятым дня
            {
                $(this).toggleClass("active")
                document.getElementById('newData').hidden=false;
            }
        }})})

$('a').click(function() {

    const active = $('.active').get().map(n => n.dataset.id);
    if (active.length>0) // убедиться, что выбранных дней больше 0
    {
        $.ajax(
            {
                type: "POST",
                url: "add.php",
                data: "active=" + active,
                success: function(response)
                {
                    refreshFunction();
                    var el = document.getElementById('newData');
                    el.classList.remove('btn');
                    el.classList.remove('btn-success');
                    el.classList.add('reserved');
                    el.textContent='Бронирование прошло успешно'; // Преобразование кнопки в текст
                    var elements=document.getElementsByClassName('days');
                    Array.prototype.forEach.call(elements, function(el) {
                        el.classList.add('no-click');
                        el.classList.remove('hover'); // пропадает подсветка дней по наведению курсора
                        temp=1; // после того как кнопка пропадет, выбирать дни становится нельзя
                    })
                }
            }
        );
    }
    else
    {
        alert('Сперва выберите дни');
    }
});

var elements=document.getElementsByClassName('days');
Array.prototype.forEach.call(elements, function(el) {
    var x=el.getAttribute('data-month');
    if (x!=5)  // если день из мая, то он делается некликабельным и шрифт меняется на серый
    {
        el.classList.add('no-click2');
        el.classList.add('gray');
    }
    else      // иначе добавляется подсветка на наведенный день
    {
        {
            el.classList.add('hover');
        }
    }
})
refreshFunction();
function refreshFunction(){
    $.ajax({
        url: 'getinfo.php'

    }).then(function (result) {
        var res=result.split(" ,");
        res.forEach(function (item) {
            const td = document.querySelector("[data-id=" + CSS.escape(item) + "]");
            var x=td.getAttribute('data-month');
            if (x==5) // проверка, что забронированный день является маем, после чего он становится некликабельным,
                // красным и убирается подсветка
            {
                td.classList.add('no-click');
                td.classList.add('red');
                td.title="Забронирован";
                td.classList.remove('hover');
            }
        })
    })}