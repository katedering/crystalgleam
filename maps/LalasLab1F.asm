LalasLab1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 21
	warp_event  3,  7, SAFFRON_CITY, 21
;	warp_event  7,  0, LALAS_LAB_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_UP, LalasLab1FTVScript
	bg_event  7,  1, BGEVENT_JUMPTEXT, LalasLab1FPlantPotText

	def_object_events
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LalaScript, -1

	object_const_def
	const LALASLAB1F_LALA

LalaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EON_STONE_FROM_LALA
	iftruefwd .done
	checkevent EVENT_GOT_EEVEE_FROM_BILL
	iftruefwd .GotEevee
	writetext .LalaText
	waitbutton
	closetext
	end

.GotEevee:
	setevent EVENT_GOT_EON_STONE_FROM_LALA
	writetext .LalaEonStoneText
	promptbutton
	verbosegivekeyitem EON_STONE
	writetext .LalaEonStoneText2
	promptbutton
.done:
	writetext .LalaText
	waitbutton
	closetext
	end

.LalaEonStoneText:
	text "Bill told me that"
	line "he gave you a"
	
	para "special Eevee?"
	
	para "I have a gift"
	line "for you as well!"
	done
	
.LalaEonStoneText2:
	text "That Eon Stone"
	line "supposedly has"
	
	para "some connection"
	line "to your special"
	cont "Eevee."
	
	para "But I'm not sure"
	line "what, exactly."
	done

.LalaText:
	text "You know, working"
	line "on coding all by"
	cont "yourself is a"
	cont "very tough job."
	
	para "But it's so re-"
	line "warding when you"
	cont "see everything"
	cont "fall into place!"
	done

LalasLab1FPlantPotText:
	text "There's a plant"
	line "pot in the way."
	
	para "You can't go up"
	line "right now."
	done
	
LalasLab1FTVScript:
	jumpthistext

	text "They have programs"
	line "that aren't shown"
	cont "in Johto…"
	done
