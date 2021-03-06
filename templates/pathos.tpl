<h1> Pathologies </h1>
<div id="formulaire_recherche_pathos">
    <form method="get" action="pathologies">


        <div class="element_formulaire">
            <label for="symptome">Recherche par symptome:</label>
            <select name="symptome">
                <option ></option>
                {foreach from=$symptomes item=item}
                    <option >{$item->getDesc()}</option>
                {/foreach}
            </select>
        </div>


        <div class="element_formulaire">
            <label for="meridien">Recherche par meridien:</label>
            <select name="meridien">
                    <option ></option>
                {foreach from=$meridiens item=item}
                    <option >{$item}</option>
                {/foreach}
            </select>
        </div>


        <div class="element_formulaire">
            <label for="type">Recherche par type de pathologie:</label>
            <select name="type">
                <option ></option>
                {foreach from=$types item=item}
                    <option >{$item}</option>
                {/foreach}
            </select>
        </div>

        <div class="element_formulaire">
        <input type="submit" value="Rechercher" id="validationBouton" />
        </div>

    </form>
</div>

<div id="div_tab_res">
    <table id="tab_res">
        <tr>
            <th>Type</th>
            <th>Méridien</th>
            <th>Description</th>
        </tr>
        {foreach from=$query item=item}
          <tr>
            <td>{$item->getType()}</td>
            <td>{$item->getMer()}</td>
            <td>{$item->getDesc()}</td>
          </tr>
        {/foreach}
    </table>
</div>
    
