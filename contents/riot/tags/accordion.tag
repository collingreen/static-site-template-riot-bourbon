<accordion>
  <ul class="accordion">
    <li each="{item in items}">
      <a href="javascript:void(0)" class="js-accordion-trigger">{item.title}</a>
      <ul class="submenu" if="{item.subitems}">
        <li each="{subitem in item.subitems}">
          <a href="javascript:void(0)">{subitem.title}</a>
        </li>
      </ul>
    </li>
  </ul>

  var self = this
  self.items = [
    {
      title: 'Bourbon',
      subitems: [
        { title: 'Bourbon is a library of pure Sass mixins that are designed to be simple and easy to use.' },
      ]
    },
    {
      title: 'Bitters',
      subitems: [
        { title: 'Bitters helps designers start projects faster by defining a basic set of Sass variables, default element style and project structure.' },
      ]
    },
    {
      title: 'Neat',
      subitems: [
        { title: 'A lightweight, semantic grid framework built with Bourbon' },
      ]
    },
    {
      title: 'RiotJS',
      subitems: [
        { title: 'A React-like user interface micro-library' },
        { title: 'Custom Tags' },
        { title: 'Enjoyable Syntax' },
        { title: 'Virtual DOM' },
        { title: 'Tiny Size' },
      ]
    },
  ]

  self.on('mount', function () {
    // pasted from refills
    $('.js-accordion-trigger').bind('click', function(e){
      // apply the toggle to the ul
      jQuery(this).parent().find('.submenu').slideToggle('fast');
      jQuery(this).parent().toggleClass('is-expanded');
      e.preventDefault();
    });
  })


</accordion>
