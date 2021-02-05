<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<table>
  <tr>
    <td>
      <ol id="posShortcut"></ol>
    </td>
    <td>
      <div id="pleaseWait" style="display:none;"> <b>${uiLabelMap.WebPosPleaseWait}</b></div>
    </td>
  </tr>
</table>
<script type="text/javascript">
  function activateHotKeys() {
    $(document).keydown(function(e){
        switch (e.keyCode) {
          case 112:
            productToSearchFocus();
            break;
          case 113:
            partyToSearchFocus();
            break;
          case 114:
            payCash();
            break;
          case 115:
            payCheck();
            break;
          case 116:
            //TODO: To be implemented with OFBIZ-5241
            break;
          case 117:
            payGiftCard();
            break;
          case 118:
            payCreditCard();
            break;
          case 119:
            payFinish();
            break;
          case 120:
            itemQuantityFocus();
            break;
          case 121:
            incrementItemQuantity();
            break;
          case 122:
            decrementItemQuantity();
            break;
          case 123:
            emptyCart();
            break;
          case 38:
            keyUp();
            break;
          case 40:
            keyDown();
            break;
          default: return;
        }
        e.preventDefault();
        return false;
    });
    WebPosHotkeys.bind("keydown", "f1", productToSearchFocus, "productToSearchFocus()", "${uiLabelMap.WebPosShortcutF1}");
    WebPosHotkeys.bind("keydown", "f2", partyToSearchFocus, "partyToSearchFocus()", "${uiLabelMap.WebPosShortcutF2}");
    WebPosHotkeys.bind("keydown", "f3", payCash, "payCash()", "${uiLabelMap.WebPosShortcutF3}");
    WebPosHotkeys.bind("keydown", "f4", payCheck, "payCheck()", "${uiLabelMap.WebPosShortcutF4}");
    <!--TODO: To be implemented with OFBIZ-5241-->
    <!--WebPosHotkeys.bind("keydown", "f5", payPin, "", "${uiLabelMap.WebPosShortcutF5}");-->
    WebPosHotkeys.bind("keydown", "f6", payGiftCard, "payGiftCard()", "${uiLabelMap.WebPosShortcutF6}");
    WebPosHotkeys.bind("keydown", "f7", payCreditCard, "payCreditCard()", "${uiLabelMap.WebPosShortcutF7}");
    WebPosHotkeys.bind("keydown", "f8", payFinish, "payFinish()", "${uiLabelMap.WebPosShortcutF8}");
    WebPosHotkeys.bind("keydown", "f9", itemQuantityFocus, "itemQuantityFocus()", "${uiLabelMap.WebPosShortcutF9}");
    WebPosHotkeys.bind("keydown", "f10", incrementItemQuantity, "incrementItemQuantity()", "${uiLabelMap.WebPosShortcutF10}");
    WebPosHotkeys.bind("keydown", "f11", decrementItemQuantity, "decrementItemQuantity()", "${uiLabelMap.WebPosShortcutF11}");
    WebPosHotkeys.bind("keydown", "f12", emptyCart, "emptyCart()", "${uiLabelMap.WebPosShortcutF12}");
    WebPosHotkeys.bind("keydown", "up", keyUp, "keyUp()", "${uiLabelMap.WebPosShortcutKeyUp}");
    WebPosHotkeys.bind("keydown", "down", keyDown, "keyDown()", "${uiLabelMap.WebPosShortcutKeyDown}");
    updateHotKeys();
  }
</script>