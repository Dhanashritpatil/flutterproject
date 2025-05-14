
const sidebarItems = document.querySelectorAll('.menu-item');

sidebarItems.forEach(item => {
item.addEventListener('click', () => {
// Remove 'active' from all
sidebarItems.forEach(i => i.classList.remove('active'));
// Add 'active' to the clicked item
item.classList.add('active');
});
});

pageNumbers.forEach(num => {
num.addEventListener('click', () => {
pageNumbers.forEach(n => n.classList.remove('active'));
num.classList.add('active');
});
});
