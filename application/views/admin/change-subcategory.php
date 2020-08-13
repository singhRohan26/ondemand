  <label class="form-label" for="field-2">Sub-Category Name</label>
<?php
if(!empty($subcategory)){
    foreach($subcategory as $subcategorys){

?>
<option data-id="<?php echo $subcategorys['id'];?>" value="<?php echo $subcategorys['id'];?>"><?php echo $subcategorys['subcategory_name'];?></option>
<?php
    } } else { ?>
 <option value="">No Sub-Category found</option>
<?php    }
?>