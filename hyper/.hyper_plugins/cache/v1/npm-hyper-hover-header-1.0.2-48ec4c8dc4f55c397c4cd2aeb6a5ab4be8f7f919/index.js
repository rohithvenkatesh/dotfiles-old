exports.decorateConfig = (config) => {
  return Object.assign({}, config, {
    css: `
      ${config.css || ''}
      .header_header, .header_header .header_windowHeader {
	    height: 10px;
	    transition: height 0.3s ease;
	    background: ${config.backgroundColor};
	    opacity: 0.8;
      }
      .header_header .tabs_nav {
	    top: 0 !important;
	    transition: top 0.3s ease;
	    background: ${config.backgroundColor}; 
      }
      .header_header .header_windowHeader .header_appTitle,
      .header_header svg.header_shape,
      .header_header .header_windowHeader .header_windowControls {
	    opacity: 0;
	    transition: opacity 0.3s ease;
      }
      .header_header + .terms_terms {
	    margin-top: 4px !important;
      }
      .header_header + .terms_terms.terms_termsShifted { 
	    margin-top: 38px !important;
      }
      .header_header:hover, .header_header:hover .header_windowHeader {
	    height: 34px;
      }
      .header_header:hover .tabs_nav {
	    top: 34px !important;
      }
      .header_header:hover svg.header_shape {
        opacity: 0.5;
      }
      .header_header:hover .header_windowHeader .header_appTitle,
      .header_header:hover svg.header_shape:hover,
      .header_header:hover .header_windowHeader .header_windowControls {
	    opacity: 1;
      }
    `
  });
};
