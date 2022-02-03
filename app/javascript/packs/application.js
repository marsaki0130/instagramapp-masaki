// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

require("trix")
require("@rails/actiontext")

import $ from 'jquery'
import axios from 'axios'



// document.addEventListener('DOMContentLoaded', () => {
//   const dataset = $('#article-commons').data()
//   const articleId = dataset.articleId

//   axios.get(`/articles/${articleId}/like`)
//     .then((response) => {
//       const hasLiked = response.data.hasLiked
//       if (hasLiked) {
//         $('.inactive-heart').removeClass('hidden')
//       } else {
//         $('.active-heart').removeClass('hidden')
//       }
//     })
// })
