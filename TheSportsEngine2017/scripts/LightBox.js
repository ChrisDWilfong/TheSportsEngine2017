; (function () {
    var demo = window.demo = window.demo || {};
    var lightBox;
    var modality;
    var closeButton;

    demo.initialize = function () {
        lightBox = demo.lightBox;
        modality = demo.modality;
        closeButton = demo.closeButton;


        $(".wrapper").mouseleave(function () {
            for (var i = 1; i <= 9; i++) {
                var image = $telerik.findElement(document, "Image" + i);
                image.src = image.src.replace("-gray", "");
            }
        });

        $(".wrapper").mouseleave(function () {
            for (var i = 1; i <= 9; i++) {
                var image = $telerik.findElement(document, "Image" + i);
                image.src = image.src.replace("-gray", "");
            }
        });

        $(".gray").mouseenter(function () {
            for (var i = 1; i <= 9; i++) {
                var image = $telerik.findElement(document, "Image" + i);
                if (image == this) {
                    image.src = image.src.replace("-gray", "");
                }
                else if (image.src.indexOf("-gray") < 0) {
                    image.src = image.src.replace(".png", "-gray.png");
                }
            }
        });
    },

        demo.toggleModality = function () {
            lightBox.set_modal(!lightBox.get_modal());
            if (!lightBox.get_modal() && !closeButton.checked) {
                closeButton.checked = true;
                lightBox.showCloseButton(true);
            }
        },

        demo.togglePreviousButton = function (sender) {
            lightBox.showPrevButton(sender.checked);
        },

        demo.toggleNextButton = function (sender) {
            lightBox.showNextButton(sender.checked);
        },

        demo.toggleCloseButton = function (sender) {
            lightBox.showCloseButton(sender.checked);
            if (!modality.checked && !sender.checked) {
                modality.checked = true;
                lightBox.set_modal(true);
            }
        },

        demo.toggleLoopItems = function () {
            lightBox.set_loopItems(!lightBox.get_loopItems());
        },

        demo.changeNavigationMode = function (sender, args) {
            lightBox.set_navigationMode(parseInt(sender.get_selectedItem().get_value()));
        }
})();