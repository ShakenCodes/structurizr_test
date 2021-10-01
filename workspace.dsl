workspace "overall" {
    !docs docs
    model {
        one = softwareSystem "One" "We should have a lot to say about this, not just one thing." {
            alpha = container "Alpha" "Xkcd had a comic where spelling alphabet names became foul language."
            bravo = container "Bravo" "This used to be Bravo"
            charlie = container "Charlie" "I prefer the old radio codes where this was Casablanca"

            alpha -> bravo "Starting our alphabet"
            bravo -> charlie "Keeping it going"
        }
        two = softwareSystem "Two" "In the Zombies model, this is just Many, and not particularly special." {
            zulu = container "Zulu" "Surprized this name has survived. Apparantly, Zebra, Zurich, Zed, Zero and (my favorite) Zanzibar ... are too hard to understand in the accents of certain nations "
        }
        one -> two "Is before"
    }
    views {
        theme default
        systemLandscape "Overall_System" {
            include *
            autoLayout
        }
        container one "One_Container" {
            include *
            autoLayout lr
        }
        container two "Two_Container" {
            include *
            autoLayout lr
        }
    }
}