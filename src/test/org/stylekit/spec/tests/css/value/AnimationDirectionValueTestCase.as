/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version 1.1
 * (the "License"); you may not use this file except in compliance with the
 * License. You may obtain a copy of the License at http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 *
 * The Original Code is the StyleKit library.
 *
 * The Initial Developer of the Original Code is
 * Videojuicer Ltd. (UK Registered Company Number: 05816253).
 * Portions created by the Initial Developer are Copyright (C) 2010
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 * 	Dan Glegg
 * 	Adam Livesley
 *
 * ***** END LICENSE BLOCK ***** */
package org.stylekit.spec.tests.css.value
{

	import flexunit.framework.Assert;
	import flexunit.framework.AsyncTestHelper;
	import org.flexunit.async.Async;

	import org.stylekit.css.value.AnimationDirectionValue;
	import org.stylekit.ui.element.UIElement;

	public class AnimationDirectionValueTestCase {
		
		protected var _result:AnimationDirectionValue;
		
		[Before]
		public function setUp():void
		{
			
		}
		
		[After]
		public function tearDown():void
		{
			
		}
		
		[Test(description="Ensures that a string value may be parsed into a valid AnimationDirectionValue object.")]
		public function stringParsesCorrectly():void
		{
			var result:AnimationDirectionValue;
			
			result = AnimationDirectionValue.parse("normal");
			Assert.assertEquals(AnimationDirectionValue.DIRECTION_NORMAL, result.direction);
			
			result = AnimationDirectionValue.parse("nonsense");
			Assert.assertEquals(AnimationDirectionValue.DIRECTION_NORMAL, result.direction);
			
			result = AnimationDirectionValue.parse("alternate");
			Assert.assertEquals(AnimationDirectionValue.DIRECTION_ALTERNATE, result.direction);
		}
		
		[Test(description="Ensures that a string value may be identified as valid for parsing as a AnimationDirectionValue.")]
		public function stringIdentifiesCorrectly():void
		{
			Assert.assertTrue(AnimationDirectionValue.identify("normal"));
			Assert.assertTrue(AnimationDirectionValue.identify("alternate"));
			Assert.assertFalse(AnimationDirectionValue.identify("nonsense"));
		}
		
	}
}