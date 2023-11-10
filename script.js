const comments_btn = document.querySelector("#comments-btn");
const comments_list = document.querySelector("#comments-list");

comments_btn.addEventListener("click", () => {
    if(comments_btn.innerHTML === "Hide comments") {
        comments_list.style.display = "none";
        comments_btn.innerHTML = "Show comments";
    } else {
        comments_list.style.display = "block";
        comments_btn.innerHTML = "Hide comments";
    }
} );

function validateCommentForm() {
    var author = document.getElementById("author").value;
    var text = document.getElementById("text").value;
  
    if (!author || !text) {
      alert("Missing fields");
      return false;
    }
  }

  function validatePostForm() {
    var title = document.getElementById("title");
    var author = document.getElementById("author").value;
    var text = document.getElementById("body").value;
  
    if (!author || !text || !title) {
      alert("Missing fields");
      return false;
    }
  }

  function confirmDelete() {
    
    if (confirm("Do you really want to delete this post" + post_id + '?')) {
      window.location.href = "delete-post.php?post_id=" + post_id;
    }
  }