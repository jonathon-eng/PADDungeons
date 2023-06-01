<script>
	import { page } from '$app/stores';

</script>

<header>


	<nav class="modal">
        <button
          class="mobile-nav-toggle sticky"
          id="mobileButton"
          aria-controls="primary-navigation"
        >
          <span class="sr-only" aria-expanded="false">Menu</span>
        </button>
        <ul
          id="primary-navigation"
          data-something="false"
          class="primary-navigation flex underline-indicators"
        >
          <li>
          <a
            class="uppercase text-color letter-spacing-2 ff-sans-cond jp"
            href="/"
            >Home</a
          >
          </li>
          <li class="list-center active">
          <a class="uppercase letter-spacing-2 ff-sans-cond jp" href="/about"
            >About</a
          >
          </li>
          <li>
          <a
            class="uppercase letter-spacing-2 ff-sans-cond jp"
            href="/dungeons"
            >Dungeons</a
          >
          </li>
          <li>
          <a
            class="uppercase letter-spacing-2 ff-sans-cond jp"
            href="/monsters"
            >Monsters</a
          >
          </li>
        </ul>
    </nav>


</header>

<style>
  
  .primary-navigation {
    -gap: clamp(1.5rem, 5vw, 3.5rem);
    --underline-gap: 5rem;
    list-style: none;
    margin: 0;
    padding: 0;
    justify-content: center;
    margin-bottom: 0.5rem;
    /* background: hsl(var(--offwhite) / 0.15); */
  }


  
  .mobile-nav-toggle {
    display: none;
  }
  
  nav {
    order: 2;
  }

  
  .underline-indicators > * {
    /* should be in the overlying div/container */
    padding: var(--underline-gap, 0.5rem) 0;
    border: 0;
    cursor: pointer;
    border-bottom: 0.2rem solid hsl(var(--white) / 0);
    background-color: transparent;
  }
  
  .underline-indicators > *:hover,
  .underline-indicators > *:focus {
    border-color: hsl(var(--white) / 0.5);
  }
  
  
  
</style>