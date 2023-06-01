// import { writable } from 'svelte/store';

// async function loadData() {
//   const monsterResponse = await fetch('/monsterData.json');
//   const leaderSkillResponse = await fetch('/leaderSkill.json');

//   const monsters = await monsterResponse.json();
//   const leaderSkills = await leaderSkillResponse.json();

//   return {
//     monsters: monsters.monsters,
//     leaderSkills: leaderSkills.leader_skills,
//   };
// }

// export const monsters = writable([]);
// export const leaderSkills = writable([]);

// loadData().then(data => {
//   monsters.set(data.monsters);
//   leaderSkills.set(data.leaderSkills);
// });
