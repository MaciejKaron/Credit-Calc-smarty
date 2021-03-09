{extends file="../templates/main.tpl"}

{block name=content}



<h2 class="content-head is-center">Credit Calculator</h2>

<div class="pure-g">
<div class="l-box-lrg pure-u-1-2">
	<form class="pure-form pure-form-stacked" action="http://localhost/Credit-Calc-smarty/app/calc.php" method="post">
			<label for="id_amount">Amount:</label>
			<input id="id_amount" type="text" placeholder="AMOUNT" name="amount" value="{$form['amount']}" >		
			<label for="id_years">Years</label>
			<input id="id_years" type="text" placeholder="YEARS" name="years" value="{$form['years']}" >
			<label for="id_percentages">Percentages:</label>
			<input id="id_percentages" type="text" placeholder="PERCENTAGES" name="percentages" value="{$form['percentages']}" >
			<button class="pure-button" type="submit">Calculate</button>
		</form>
		</div>

<div class="l-box-lrg pure-u-1-2">



{* wyświeltenie listy błędów, jeśli istnieją *}
{if isset($messages)}
	{if count($messages) > 0} 
		<h4>Wystąpiły błędy: </h4>
		<ol class="err">
		{foreach  $messages as $msg}
		{strip}
			<li>{$msg}</li>
		{/strip}
		{/foreach}
		</ol>
	{/if}
{/if}

{* wyświeltenie listy informacji, jeśli istnieją *}
{if isset($infos)}
	{if count($infos) > 0} 
		<h4>Informacje: </h4>
		<ol class="inf">
		{foreach  $infos as $msg}
		{strip}
			<li>{$msg}</li>
		{/strip}
		{/foreach}
		</ol>
	{/if}
{/if}

{if isset($result)}
	<h4>Wynik</h4>
	<p class="res">
	{$result}
	</p>
{/if}

</div>
</div>

{/block}