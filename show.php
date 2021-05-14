<?php
include "ajax.php";
?>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">

<script type="text/javascript" src="js.js"></script>

<div class="wrapper">
    <div class="foo1">
<table id="calendar" class="table_id" style="width: 20%;">
  <thead>
  <tr>
    <th scope="col">Пн</th>
    <th scope="col">Вт</th>
    <th scope="col">Ср</th>
    <th scope="col">Чт</th>
    <th scope="col">Пт</th>
    <th scope="col">Сб</th>
    <th scope="col">Вс</th>
  </tr>
  </thead>
  <tbody>
  <tr>
      <?php
      $i=0;
      foreach ($days as $day)
      {?>
      <td  title="Свободен" class="days" data-id="<?=$day['id']?>" data-status="<?=$day['status']?>" data-month="<?=$day['month']?>"><?= $day['mday'] ?></td>
      <?php $i++; if ($i>6) { $i=0; ?>  <!--перенос каждого 8ого дня на новую строку-->
  </tr>  <tr>
      <?php }} ?>
  </tr>
  </tbody>
</table>
    </div>
    <nav class="foo2">
        <a class="btn btn-success"  id="newData" hidden="true" >Забронировать</a>
    </nav>
</div>

