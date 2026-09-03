/*
----------------------------------------
RIG Interactions (built for RIG-FiveM)

Author: Case (https://caseirl.dev)
Repo: https://github.com/rig-fivem/rig_interactions
License: https://github.com/rig-fivem/rig_interactions/blob/main/LICENSE
----------------------------------------
*/

import { TextUI } from "./js/text_ui.js";

const text_ui = new TextUI();

setTimeout(() => {
    text_ui.set_data({
        position: 'right-center',
        image: '/ui/assets/images/RIG256.png',
        label: 'Test',
        quantity: 5,
        action_text: 'Press E to end test'
    });
}, 2000);

setTimeout(() => {
    text_ui.update_quantity(3);
}, 5000);

setTimeout(() => {
    text_ui.clear();
}, 8000);