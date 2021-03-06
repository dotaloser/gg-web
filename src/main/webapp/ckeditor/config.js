/**
 * @license Copyright (c) 2003-2016, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */
CKEDITOR.editorConfig = function( config ) {
	config.toolbarGroups = [
		{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
		{ name: 'forms', groups: [ 'forms' ] },
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
		{ name: 'links', groups: [ 'links' ] },
		{ name: 'insert', groups: [ 'insert' ] },
		{ name: 'styles', groups: [ 'styles' ] },
		{ name: 'colors', groups: [ 'colors' ] },
		{ name: 'tools', groups: [ 'tools' ] },
		{ name: 'others', groups: [ 'others' ] }
	];
	
	config.removeButtons = 'Scayt,Subscript,Superscript,Print,NewPage,Save,Templates,Preview,PasteFromWord,Find,Replace,SelectAll,HiddenField,ImageButton,Button,Select,Radio,CopyFormatting,Outdent,Indent,CreateDiv,BidiLtr,BidiRtl,Language,Anchor,PageBreak,Iframe,ShowBlocks';
	
	config.height = 600;
	
	config.image_previewText=' ';
	
	config.filebrowserImageUploadUrl = ctxAP + '/article/uploadPic';
	
	config.extraPlugins = 'clipboard,lineutils,widget,dialog,codesnippet';
	
	config.codeSnippet_languages = {
			java: 'java',
			cpp: 'c++',
			cs: 'C#',
		    javascript: 'JavaScript',
		    php: 'PHP',
			css: 'CSS',
			html: 'HTML',
			javascript: 'JavaScript',
			json: 'JSON',
			objectivec: 'Objective-C',
			perl: 'Perl',
			php: 'PHP',
			python: 'Python',
			ruby: 'Ruby',
			sql: 'SQL',
			xml: 'XML'
		};
};