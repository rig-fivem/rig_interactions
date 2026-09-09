/*
----------------------------------------
RIG Interactions (built for RIG-FiveM)

Author: Case (https://caseirl.dev)
Repo: https://github.com/rig-fivem/rig_interactions
License: https://github.com/rig-fivem/rig_interactions/blob/main/LICENSE
----------------------------------------
*/

import { TextUI } from "./js/text_ui.js";

const HANDLERS = {}

let text_ui = null;

// Handler Functions

/** Text UI */

HANDLERS.update_text_ui = (data) => {
    if (!text_ui) {
        text_ui = new TextUI();
    }
    text_ui.set_data(data.payload);
}

HANDLERS.update_hint_quantity = (data) => {
    if (text_ui) {
        text_ui.update_quantity(data.payload.amount);
    }
}

HANDLERS.clear_text_ui = () => {
    if (text_ui) {
        text_ui.clear();
    }
}

HANDLERS.destroy_text_ui = () => {
    if (text_ui) {
        text_ui.destroy();
        text_ui = null;
    }
}

/**
 * Global message listener for all NUI messages.
 * Routes each message to its corresponding handler.
 */
window.addEventListener("message", (event) => {
    const { func } = event.data;
    const handler = HANDLERS[func];

    if (typeof handler !== "function") {
        console.warn(`Handler missing: ${func}`);
        return;
    }

    handler(event.data);
});