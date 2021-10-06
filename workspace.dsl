workspace "overall" {
    !docs docs
    !impliedRelationships true
    model {
        inputData = element "Input Data" "Data Store" "Amazing name, don't you think?" "Data Store"
        outputData = element "Output Data" "Data Store" "AmBet you didn't see that name coming!" "Data Store"
        one = softwareSystem "One" "We should have a lot to say about this, not just one thing." {
            alpha = container "Alpha" "XKCD had a comic where spelling alphabet names became foul language."
            bravo = container "Bravo" "This used to be Baker"
            charlie = container "Charlie" "I prefer the old radio codes where this was Casablanca"

            inputData -> alpha "Vroom... let's go"
            alpha -> bravo "Starting our alphabet"
            bravo -> charlie "Keeping it going"
        }
        two = softwareSystem "Two" "In the Zombies model, this is just Many, and not particularly special." {
            zulu = container "Zulu" "Surprised this name has survived. Apparently, Zebra, Zurich, Zed, Zero and (my favorite) Zanzibar, are too hard to understand in the accents of certain nations "
            zulu -> outputData "And that's the end of it"
        }
        charlie -> zulu "Is before"
    }
    views {
        theme default
        styles {
            element "Data Store" {
                shape Cylinder
                metadata true
                description true
                background #1168bd
                color #ffffff
            }
        }
        systemLandscape "Overall_System" {
            include *
            include "element.tag==Data Store"
            autoLayout
        }
        container one "One_Container" {
            include *
            autoLayout lr
        }
        container two "Two_Container" {
            include *
            include "element.tag==Data Store"
            autoLayout lr
        }
    }
}