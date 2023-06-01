<script>
    import { goto } from '$app/navigation';
    import { page } from '$app/stores'; // Assuming you have a store named 'page' to keep track of the active page
  
    const tabs = ['Main', 'Guides', 'About'];
  
    function navigateToTab(tab) {
      switch (tab) {
        case 'Main':
          goto('/');
          break;
        case 'Guides':
          goto('/guides');
          break;
        case 'About':
          goto('/about');
          break;
        default:
          goto('/');
          break;
      }
    }
  </script>
  
  <div class="tab-bar">
    {#each tabs as tab}
      <div
        class="tab"
        on:click={() => navigateToTab(tab)}
        class:selected={tab === $page}
      >
        {tab}
      </div>
    {/each}
  </div>
  
  <style>
    .tab-bar {
      position: fixed;
      bottom: 0;
      width: 100%;
      display: flex;
      justify-content: space-evenly;
      background-color: #f1f1f1;
      padding: 1rem 0;
      box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
    }
  
    .tab {
      display: flex;
      align-items: center;
      justify-content: center;
      flex-grow: 1;
      padding: 0.5rem;
      cursor: pointer;
    }
  
    .tab[selected] {
      background-color: #ccc;
    }
  </style>
  