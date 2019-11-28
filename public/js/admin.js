function onClickDelete(e)
{
    let confirm = window.confirm("Etes vous sur de vouloir supprimer l'élément sélectionné?");

    if (confirm)
    {
        let id = $(this).parents('.para').attr('id');
        console.log(id);

        $.post(e.currentTarget.href, (reponse) => {

            const elt = document.getElementById(id);
            elt.parentNode.removeChild(elt);
        });
    }

    else
    {
        e.preventDefault();
    }
}


let hash = window.location.hash;
if (hash)
{
    // console.log(hash);
    $(`.nav-tabs a[href="${hash}"]`).tab('show');
}

const deleteButtons = document.getElementsByClassName("delete");
for (let i=0; i<deleteButtons.length; i++)
{
    deleteButtons[i].addEventListener("click", onClickDelete);
}


