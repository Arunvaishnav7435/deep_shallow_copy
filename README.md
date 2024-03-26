# deep_shallow_copy
<!DOCTYPE html>
<html>

<h1>Deep and Shallow Copy in SystemVerilog</h1>

<h2>Overview</h2>
<p>This repository contains a SystemVerilog implementation demonstrating the concept of deep and shallow copying using parameterized classes. The implementation allows for controlling the type of copy (deep or shallow) performed on objects of a given class.</p>

<h2>Description</h2>
<p>The implementation is divided into two primary classes:</p>
<ul>
  <li><strong>Class `one`</strong>: Contains an integer member `a` and a method `copy` for creating a copy of an object.</li>
  <li><strong>Class `two`</strong>: A parameterized class with a bit `sd` to control deep (`1`) and shallow (`0`) copying. Contains an integer member `b` and a handle `c` to an object of class `one`. Includes methods for object creation (`new`), copying (`copy`), and printing object state (`print`).</li>
</ul>

<h2>Usage</h2>
<ol>
  <li><strong>Object Creation</strong>: Create objects of class `two` specifying the copy type (deep or shallow) using the parameter `sd`.</li>
  <li><strong>Copying Objects</strong>: Use the `copy` function to perform either deep or shallow copying based on the `sd` parameter.</li>
  <li><strong>Printing Object State</strong>: The `print` function is used to display the state of an object.</li>
</ol>

<h2>Example</h2>
<p>In the `test` module, two objects `H1` and `H2` of class `two` are created. `H1` is set up for shallow copying and `H2` for deep copying. The script demonstrates how changes in the original object reflect in the copied object based on the copy type.</p>

<h2>File Structure</h2>
<ul>
  <li><code>README.md</code>: This documentation file in HTML format.</li>
  <li><code>DeepShallowCopy.sv</code>: The SystemVerilog source file containing the implementation.</li>
</ul>
</body>
</html>
