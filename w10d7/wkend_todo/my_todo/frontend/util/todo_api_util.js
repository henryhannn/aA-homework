export const fetchTodos = () => (
    $.ajax({
        method: 'GET',
        url: '/api/todos'
    })
);

export const fetchTodo = id => (
    $.ajax({
      method: 'GET',
      url: `/api/todos/${id}`,
    })
);

// export const fetchAllTeas = () => (
//     $.ajax({
//         url: `/api/teas`,
//         method: 'GET'
//     })
// );
  
// export const createTea = (tea) => {
//     return $.ajax({
//         url: `/api/teas`,
//         method: 'POST',
//         data: {
//         tea: tea
//         }
//     });
// };