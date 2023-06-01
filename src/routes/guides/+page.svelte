<script>
    import { onMount } from "svelte";
    
    let guides = [];
  
    async function fetchGuides() {
      const sheetId = '1IHijzY1BsYyBkZy_48mOF3lSrOJYk93gSK8sxkF2w3Y';
      const sheetName = 'Sheet1';
    const apiKey = 'AIzaSyAgxYbKm0w4a6B-7IQ1jfzt5LPsImkIefM'; 
    
      const url = `https://sheets.googleapis.com/v4/spreadsheets/${sheetId}/values/${sheetName}?key=${apiKey}`;
    
      try {
        const response = await fetch(url);
        if (!response.ok) {
          throw new Error('Failed to fetch data');
        }
    
        const data = await response.json();
        
        // Process the retrieved data, skipping the first row
        const values = data.values || [];
        guides = values.slice(1).map(([title, link, description, author]) => ({ title, link, description, author }));
    
        return guides;
      } catch (error) {
        console.error(error);
        // Handle error case
        return null;
      }
    }
  
    onMount(async () => {
      await fetchGuides();
    });
  </script>
  
  <main>
    <h1>Guides:</h1>
  
    {#if guides.length > 0}
      
        {#each guides as guide}
          <h4>
            <a href={guide.link} target="_blank">{guide.title}</a>
          </h4>
          <p>{guide.description}</p>
          <p class="created">Created by {guide.author}</p>
        {/each}
     
    {:else}
      <p>No guides available.</p>
    {/if}
  </main>
  
  <style>
    a{
        text-decoration: none;
        color: white;

    }
    a:hover{
        color: gray;
    }
    main {
      max-width: 800px;
      margin: 0 auto;
      padding: 2rem;
      text-align: center;
      color: white;
     
    }
  
    h1 {
      font-size: 2rem;
      margin-bottom: 1.5rem;
    }
  
    p {
      font-size: 1.2rem;
      margin-bottom: 1rem;
      color: darkgrey
    }
    .created{
        margin-bottom: 100px;
    }
  </style>
  
  