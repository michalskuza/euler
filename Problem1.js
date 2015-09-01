(function () {
    var sum = 0;
    for (var i = 1; i < 1000; i++) sum += i % 3 == 0 || i % 5 == 0 ? i : 0;
    console.log(sum);
})()
