<style>
    body {
        background-color: aqua;
        font-family: sans-serif;
        margin: 0;
    }

    input {
        /* styles for input not in a label  */
        border: tomato 2px solid;
    }

    label {
        /* styles for label */
        font-family: system-ui;
        font-size: 1.25rem;

        input {
            /* styles for input in a label  */
            border: blue 2px dashed;
        }
    }

    /*
    section:not(:target, :has(:target)) {
        display: none;
    }
    */

    .nav-link:active {
        color: peru;
    }



    section:not(#home, :target),
    :root:has(:target) #home {
        display: none;
    }

    header {
        display: flex;
        flex-direction: column;
        position: absolute;
        height: 8rem;
        width: 100%;
        background: rgb(134, 198, 122);
        color: #fff;
    }

    header h1 {
        line-height: 4rem;
        margin: 0 1em;
    }

    .nav-link {
        color: black;
        text-decoration: none;
    }

    .nav-link.active {
        color: red;
        font-weight: bold;
    }

    .section {
        height: 100vh;
        padding: 50px;
        border: 1px solid #ddd;
        margin-top: 20px;
    }

    section {
        padding: 9rem 1rem 1rem;
    }

    section:target {
        background-color: blueviolet;
    }
</style>