window.onload = function() {
			$.ajax({
				url : "rollingtest.do",
				type : "GET",
				dataType : "json",
				success : function(data) {
					for (var i = 0; i < data.length; i++) {
						$("#notification").append(
								"<li><a href='notificationDetail.do?notification_seq="
										+ data[i].notification_seq + "'>"
										+ data[i].notification_title
										+ "</a></li>");
					}
					var height = $("#notice").height();
					var num = $(".rolling li").length;
					var max = height * num;
					var move = 0;
					function noticeRolling() {
						move += height;
						$(".rolling").animate({
							"top" : -move
						}, 500, function() {
							if (move >= max) {
								$(this).css("top", 0);
								move = 0;
							}
							;
						});
					}
					;
					noticeRollingOff = setInterval(noticeRolling, 5000);
					$(".rolling").append($(".rolling li").first().clone());

					$(".rolling_stop").click(function() {
						clearInterval(noticeRollingOff);
					});
					$(".rolling_start").click(function() {
						noticeRollingOff = setInterval(noticeRolling, 1000);
					});

				},
				error : function(request, status, error) {
				}
			});
		};
