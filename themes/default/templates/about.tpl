<div class="block-header2">
The Killboard</div>
This is the EVE Development Network Killboard running version {$version}, created for <a href="http://www.eve-online.com/">EVE Online</a>
 corporations and alliances. Based on the EVE-Killboard created by rig0r, it is now developed and maintained by the <a href="http://www.eve-id.net/">
EVE-Dev</a> group.<br />
All EVE graphics and data used are property of <a href="http://www.ccpgames.com/">CCP</a>.<br />
<br />
<a href="http://www.eve-id.net/"><img src="http://www.eve-id.net/logo.png" border="0" alt="eve-dev logo" /></a>
<br />
<br />
<b>Current developers:</b>
<br />{section name=i loop=$current_developer}{$current_developer[i]}{if ($smarty.section.i.index + 1) < count($current_developer)}, {/if}{/section}
<br />
<b>Previous developers:</b>
<br />{section name=i loop=$developer}{$developer[i]}{if ($smarty.section.i.index + 1) < count($developer)}, {/if}{/section}
<br />
<b>Contributors:</b>
<br />{section name=i loop=$contributor}{$contributor[i]}{if ($smarty.section.i.index + 1) < count($contributor)}, {/if}{/section}<br />
<br />
This killboard currently contains: <b>{$kills}</b> killmails,
<b>{$pilots}</b> pilots,
<b>{$corps}</b> corporations and
<b>{$alliances}</b> alliances.<br />
<br />
<div class="block-header2">Kills &amp; Real kills</div>
'Kills' -    The count of all kills by an entity. <br />
'Real kills' - This is the count of recorded kills minus any pod, shuttle and noobship kills. <br />
 The 'Real kills' value is used throughout all award and statistic pages.<br />
<br />
<div class="block-header2">Kill points</div>
Administrator option.<br />
<br />
If enabled, every kill is assigned a point value. Based on the shiptype destroyed, and the number and types of ships involved in the kill, the number of points indicates the difficulty of the kill. As a result, a gank will get a lot less points awarded than a kill in a small engagement.<br />
<br />
<div class="block-header2">Efficiency</div>
Efficiency is calculated as the ratio of damage done in ISK of ship and modules versus the damage received in ISK. This comes down to <i>
damagedone / (damagedone + damagereceived ) * 100</i>.<br />
<br />{if 0}
<div class="block-header2">Ship values</div>
The shipclasses and average ISK value are as follows:<br />
<br />
<table class="kb-table" cellspacing="1">
<tr class="kb-table-header">
<td width="160">Ship class</td>
<td>Value in ISK</td>
<td>Points</td>
<td align="center">Indicator</td>
</tr>
{section name=i loop=$shipclass}
<tr class="kb-table-row-odd">
	<td>{$shipclass[i].name}</td>
	<td align="right">{$shipclass[i].value}</td>
	<td align="right">{$shipclass[i].points}</td>
	<td align="center"><img class="ship" src="{$shipclass[i].valind}" alt="" border="0" />
	</td>
</tr>
{/section}
</table>{/if}