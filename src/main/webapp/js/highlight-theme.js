
( function() {
	initThemeChange();

	function initThemeChange() {
		var templates = [
					'monokai-sublime', 'default', 'arta', 'ascetic', 'atelier-dune.dark', 'atelier-dune.light', 'atelier-forest.dark', 'atelier-forest.light', 'atelier-heath.dark', 'atelier-heath.light', 'atelier-lakeside.dark', 'atelier-lakeside.light', 'atelier-seaside.dark', 'atelier-seaside.light', 'brown-paper', 'dark', 'docco', 'far', 'foundation', 'github', 'googlecode', 'idea', 'ir-black', 'magula', 'mono-blue', 'monokai', 'obsidian', 'paraiso.dark', 'paraiso.light', 'pojoaque', 'railscasts', 'rainbow', 'school-book', 'solarized_dark', 'solarized-light', 'sunburst', 'tomorrow-night-blue', 'tomorrow-night-bright', 'tomorrow-night-eighties', 'tomorrow-night', 'tomorrow', 'vs', 'xcode', 'zenburn'
				],
				pre = CKEDITOR.document.getById( 'sampleConfig' ),
				select = CKEDITOR.document.getById( 'select' ),
				codeTemplate = '<strong>config.extraPlugins = \'codesnippet\';</strong>\n' +
						'config.codeSnippet_theme = \'{tpl}\';\n',
				name, option;

		while ( ( name = templates.shift() ) ) {
			option = CKEDITOR.document.createElement( 'option', {
				attributes: {
					value: name
				}
			} );

			option.setText( name );
			select.append( option );
		}

		select.$.onchange = function() {
			if ( CKEDITOR.instances.content ){
				console.log('content is destroy...');
				CKEDITOR.instances.content.destroy();
			}
			CKEDITOR.replace( 'content' );
			console.log(this.value);
			CKEDITOR.config.codeSnippet_theme = this.value;
//			CKEDITOR.replace( 'content', CKEDITOR.tools.extend( {}, config, {
//				codeSnippet_theme: this.value
//			}, true ) );
		};
	}

	if ( CKEDITOR.env.ie && CKEDITOR.env.version == 8 )
		CKEDITOR.document.getById( 'ie8-warning' ).addClass( 'tip alert' );
}() );
			