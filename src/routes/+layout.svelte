<script>
    import './styles.css';
    import Header from './Header.svelte';
    import TabBar from './TabBar.svelte';

  let activeTab = 'Tab 1';
  let tabs = ['Tab 1', 'Tab 2', 'Tab 3'];
</script>



<!-- <Header /> -->

<main>
    <TabBar {activeTab} {tabs} />
    
    {#if activeTab === 'Tab 1'}
      <!-- Content for Tab 1 -->
    {/if}
    
    {#if activeTab === 'Tab 2'}
      <!-- Content for Tab 2 -->
    {/if}
    
    {#if activeTab === 'Tab 3'}
      <!-- Content for Tab 3 -->
    {/if}
    <slot />
</main>


