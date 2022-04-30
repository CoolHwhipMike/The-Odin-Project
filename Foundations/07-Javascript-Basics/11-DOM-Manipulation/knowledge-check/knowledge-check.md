## What is the DOM?
Document Object Model - The contents of a page represented like a tree.

## How do you target the nodes you want to work with?
You use selectors

## How do you create an element in the DOM?
create a variable that = document.createElement('typeOfElement');

## How do you add an element to the DOM?
parent.appendChild(child);
parent.insertBefore(new, reference);

## How do you remove an element from the DOM?
parent.removeChild(child);

## How can you alter an element in the DOM?
node.style.color = 'blue';                                      
node.style.cssText = 'color: blue; background: white;';          
node.setAttribute('style', 'color: blue; background: white;');    

## When adding text to a DOM element, should you use textContent or innerHTML? Why?
Use textContent, innerHTML is vulnerable to injection.

## Where should you include your JavaScript tag in your HTML file when working with DOM nodes?
At the bottom or in the head with 'defer'.

## How do “events” and “listeners” work?
Events are things that happen like click or mouseover. Listeners attach the events to a node.

## What are three ways to use events in your code?
Inline, attached to the element in another file, or attached by an event listener.

## Why are event listeners the preferred way to handle events?
You can attach multiple events to a node

## What are the benefits of using named functions in your listeners?
It's cleaner and you can easily use the function in multiple palces.

## How do you attach listeners to groups of nodes?
Use a selector to get a node list then use a forEach to loop through the node list.

## What is the difference between the return values of querySelector and querySelectorAll?
querySelector takes only the first match, querySelectorAll take all and returns a node list

## What does a “nodelist” contain?
A list of nodes, almost like an array but it's missing some methods and properties.

## Explain the difference between “capture” and “bubbling”.
When something is clicked it triggers the event then propogate up each parent container all the way up. Capture goes down through the ancestors to the target.