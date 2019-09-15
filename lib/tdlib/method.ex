defmodule TDLib.Method do
  @moduledoc """
  This module was generated using Telegram's TDLib documentation. It contains
  346 submodules (= structs).
  """
defmodule GetLanguagePackInfo do
  @moduledoc  """
  Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization.
  Returns object_ptr<LanguagePackInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | language_pack_id | string | Language pack identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_language_pack_info.html).
  """

  defstruct "@type": "getLanguagePackInfo", "@extra": nil, language_pack_id: nil
end
defmodule CreateNewBasicGroupChat do
  @moduledoc  """
  Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_ids | number[] | Identifiers of users to be added to the basic group. |
  | title | string | Title of the new basic group; 1-128 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_new_basic_group_chat.html).
  """

  defstruct "@type": "createNewBasicGroupChat", "@extra": nil, user_ids: nil, title: nil
end
defmodule SearchChatRecentLocationMessages do
  @moduledoc  """
  Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user.
  Returns object_ptr<Messages>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | limit | number | Maximum number of messages to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_chat_recent_location_messages.html).
  """

  defstruct "@type": "searchChatRecentLocationMessages", "@extra": nil, chat_id: nil, limit: nil
end
defmodule SendInlineQueryResultMessage do
  @moduledoc  """
  Sends the result of an inline query as a message. Returns the sent message. Always clears a chat draft message.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Target chat. |
  | reply_to_message_id | string | Identifier of a message to reply to or 0. |
  | disable_notification | bool | Pass true to disable notification for the message. Not supported in secret chats. |
  | from_background | bool | Pass true if the message is sent from background. |
  | query_id | string | Identifier of the inline query. |
  | result_id | string | Identifier of the inline result. |
  | hide_via_bot | bool | If true, there will be no mention of a bot, via which the message is sent. Can be used only for bots GetOption("animation_search_bot_username"), GetOption("photo_search_bot_username") and GetOption("venue_search_bot_username"). |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_inline_query_result_message.html).
  """

  defstruct "@type": "sendInlineQueryResultMessage", "@extra": nil, chat_id: nil, reply_to_message_id: nil, disable_notification: nil, from_background: nil, query_id: nil, result_id: nil, hide_via_bot: nil
end
defmodule ClearRecentlyFoundChats do
  @moduledoc  """
  Clears the list of recently found chats.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clear_recently_found_chats.html).
  """

  defstruct "@type": "clearRecentlyFoundChats", "@extra": nil
end
defmodule CheckChatInviteLink do
  @moduledoc  """
  Checks the validity of an invite link for a chat and returns information about the corresponding chat.
  Returns object_ptr<ChatInviteLinkInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | invite_link | string | Invite link to be checked; should begin with "<a href="https://t.me/joinchat/",">https://t.me/joinchat/&quot;,</a> "<a href="https://telegram.me/joinchat/",">https://telegram.me/joinchat/&quot;,</a> or "<a href="https://telegram.dog/joinchat/"">https://telegram.dog/joinchat/&quot;</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_invite_link.html).
  """

  defstruct "@type": "checkChatInviteLink", "@extra": nil, invite_link: nil
end
defmodule AnswerCallbackQuery do
  @moduledoc  """
  Sets the result of a callback query; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | callback_query_id | string | Identifier of the callback query. |
  | text | string | Text of the answer. |
  | show_alert | bool | If true, an alert should be shown to the user instead of a toast notification. |
  | url | string | URL to be opened. |
  | cache_time | number | Time during which the result of the query can be cached, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answer_callback_query.html).
  """

  defstruct "@type": "answerCallbackQuery", "@extra": nil, callback_query_id: nil, text: nil, show_alert: nil, url: nil, cache_time: nil
end
defmodule GetChatAdministrators do
  @moduledoc  """
  Returns a list of users who are administrators of the chat.
  Returns object_ptr<Users>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_administrators.html).
  """

  defstruct "@type": "getChatAdministrators", "@extra": nil, chat_id: nil
end
defmodule GetChatReportSpamState do
  @moduledoc  """
  Returns information on whether the current chat can be reported as spam.
  Returns object_ptr<ChatReportSpamState>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_report_spam_state.html).
  """

  defstruct "@type": "getChatReportSpamState", "@extra": nil, chat_id: nil
end
defmodule ReportSupergroupSpam do
  @moduledoc  """
  Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Supergroup identifier. |
  | user_id | number | User identifier. |
  | message_ids | string[] | Identifiers of messages sent in the supergroup by the user. This list must be non-empty. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_supergroup_spam.html).
  """

  defstruct "@type": "reportSupergroupSpam", "@extra": nil, supergroup_id: nil, user_id: nil, message_ids: nil
end
defmodule SetChatClientData do
  @moduledoc  """
  Changes client data associated with a chat.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | client_data | string | New value of client_data. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_chat_client_data.html).
  """

  defstruct "@type": "setChatClientData", "@extra": nil, chat_id: nil, client_data: nil
end
defmodule ValidateOrderInfo do
  @moduledoc  """
  Validates the order information provided by a user and returns the available shipping options for a flexible invoice.
  Returns object_ptr<ValidatedOrderInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier of the Invoice message. |
  | message_id | string | Message identifier. |
  | order_info | orderInfo | The order information, provided by the user. |
  | allow_save | bool | True, if the order information can be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1validate_order_info.html).
  """

  defstruct "@type": "validateOrderInfo", "@extra": nil, chat_id: nil, message_id: nil, order_info: nil, allow_save: nil
end
defmodule CheckChatUsername do
  @moduledoc  """
  Checks whether a username can be set for a chat.
  Returns object_ptr<CheckChatUsernameResult>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier; should be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if chat is being created. |
  | username | string | Username to be checked. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username.html).
  """

  defstruct "@type": "checkChatUsername", "@extra": nil, chat_id: nil, username: nil
end
defmodule DeleteSavedCredentials do
  @moduledoc  """
  Deletes saved credentials for all payment provider bots.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_saved_credentials.html).
  """

  defstruct "@type": "deleteSavedCredentials", "@extra": nil
end
defmodule SendEmailAddressVerificationCode do
  @moduledoc  """
  Sends a code to verify an email address to be added to a user's Telegram Passport.
  Returns object_ptr<EmailAddressAuthenticationCodeInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | email_address | string | Email address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_email_address_verification_code.html).
  """

  defstruct "@type": "sendEmailAddressVerificationCode", "@extra": nil, email_address: nil
end
defmodule TestUseUpdate do
  @moduledoc  """
  Does nothing and ensures that the Update object is used; for testing only. This is an offline method. Can be called before authorization.
  Returns object_ptr<Update>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_use_update.html).
  """

  defstruct "@type": "testUseUpdate", "@extra": nil
end
defmodule SendPhoneNumberVerificationCode do
  @moduledoc  """
  Sends a code to verify a phone number to be added to a user's Telegram Passport.
  Returns object_ptr<AuthenticationCodeInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number | string | The phone number of the user, in international format. |
  | settings | phoneNumberAuthenticationSettings | Settings for the authentication of the user's phone number. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_phone_number_verification_code.html).
  """

  defstruct "@type": "sendPhoneNumberVerificationCode", "@extra": nil, phone_number: nil, settings: nil
end
defmodule UnpinChatMessage do
  @moduledoc  """
  Removes the pinned message from a chat; requires can_pin_messages rights in the group or channel.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1unpin_chat_message.html).
  """

  defstruct "@type": "unpinChatMessage", "@extra": nil, chat_id: nil
end
defmodule TestCallString do
  @moduledoc  """
  Returns the received string; for testing only. This is an offline method. Can be called before authorization.
  Returns object_ptr<TestString>.

  | Name | Type | Description |
  |------|------| ------------|
  | x | string | String to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_call_string.html).
  """

  defstruct "@type": "testCallString", "@extra": nil, x: nil
end
defmodule AddNetworkStatistics do
  @moduledoc  """
  Adds the specified data to data usage statistics. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | entry | NetworkStatisticsEntry | The network statistics entry with the data to be added to statistics. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_network_statistics.html).
  """

  defstruct "@type": "addNetworkStatistics", "@extra": nil, entry: nil
end
defmodule WriteGeneratedFilePart do
  @moduledoc  """
  Writes a part of a generated file. This method is intended to be used only if the client has no direct access to TDLib's file system, because it is usually slower than a direct write to the destination file.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | generation_id | string | The identifier of the generation process. |
  | offset | number | The offset from which to write the data to the file. |
  | data | string | The data to write. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1write_generated_file_part.html).
  """

  defstruct "@type": "writeGeneratedFilePart", "@extra": nil, generation_id: nil, offset: nil, data: nil
end
defmodule GetAttachedStickerSets do
  @moduledoc  """
  Returns a list of sticker sets attached to a file. Currently only photos and videos can have attached sticker sets.
  Returns object_ptr<StickerSets>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | number | File identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_attached_sticker_sets.html).
  """

  defstruct "@type": "getAttachedStickerSets", "@extra": nil, file_id: nil
end
defmodule OpenMessageContent do
  @moduledoc  """
  Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document, location or venue, or has listened to an audio file or voice note message). An updateMessageContentOpened update will be generated if something has changed.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier of the message. |
  | message_id | string | Identifier of the message with the opened content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1open_message_content.html).
  """

  defstruct "@type": "openMessageContent", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule CreateSupergroupChat do
  @moduledoc  """
  Returns an existing chat corresponding to a known supergroup or channel.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Supergroup or channel identifier. |
  | force | bool | If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_supergroup_chat.html).
  """

  defstruct "@type": "createSupergroupChat", "@extra": nil, supergroup_id: nil, force: nil
end
defmodule AcceptTermsOfService do
  @moduledoc  """
  Accepts Telegram terms of services.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | terms_of_service_id | string | Terms of service identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1accept_terms_of_service.html).
  """

  defstruct "@type": "acceptTermsOfService", "@extra": nil, terms_of_service_id: nil
end
defmodule SetChatNotificationSettings do
  @moduledoc  """
  Changes the notification settings of a chat.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | notification_settings | chatNotificationSettings | New notification settings for the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_chat_notification_settings.html).
  """

  defstruct "@type": "setChatNotificationSettings", "@extra": nil, chat_id: nil, notification_settings: nil
end
defmodule CheckAuthenticationCode do
  @moduledoc  """
  Checks the authentication code. Works only when the current authorization state is authorizationStateWaitCode.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | code | string | The verification code received via SMS, Telegram message, phone call, or flash call. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_authentication_code.html).
  """

  defstruct "@type": "checkAuthenticationCode", "@extra": nil, code: nil
end
defmodule GetDeepLinkInfo do
  @moduledoc  """
  Returns information about a tg:// deep link. Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing. Returns a 404 error for unknown links. Can be called before authorization.
  Returns object_ptr<DeepLinkInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | link | string | The link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_deep_link_info.html).
  """

  defstruct "@type": "getDeepLinkInfo", "@extra": nil, link: nil
end
defmodule ToggleSupergroupSignMessages do
  @moduledoc  """
  Toggles sender signatures messages sent in a channel; requires can_change_info rights.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Identifier of the channel. |
  | sign_messages | bool | New value of sign_messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggle_supergroup_sign_messages.html).
  """

  defstruct "@type": "toggleSupergroupSignMessages", "@extra": nil, supergroup_id: nil, sign_messages: nil
end
defmodule RequestAuthenticationPasswordRecovery do
  @moduledoc  """
  Requests to send a password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1request_authentication_password_recovery.html).
  """

  defstruct "@type": "requestAuthenticationPasswordRecovery", "@extra": nil
end
defmodule GetMe do
  @moduledoc  """
  Returns the current user.
  Returns object_ptr<User>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_me.html).
  """

  defstruct "@type": "getMe", "@extra": nil
end
defmodule EditCustomLanguagePackInfo do
  @moduledoc  """
  Edits information about a custom local language pack in the current localization target. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | info | languagePackInfo | New information about the custom local language pack. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_custom_language_pack_info.html).
  """

  defstruct "@type": "editCustomLanguagePackInfo", "@extra": nil, info: nil
end
defmodule EnableProxy do
  @moduledoc  """
  Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | proxy_id | number | Proxy identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1enable_proxy.html).
  """

  defstruct "@type": "enableProxy", "@extra": nil, proxy_id: nil
end
defmodule SetChatMemberStatus do
  @moduledoc  """
  Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for adding new members to the chat; instead, use addChatMember. The chat member status will not be changed until it has been synchronized with the server.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | user_id | number | User identifier. |
  | status | ChatMemberStatus | The new status of the member in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_chat_member_status.html).
  """

  defstruct "@type": "setChatMemberStatus", "@extra": nil, chat_id: nil, user_id: nil, status: nil
end
defmodule GetMessages do
  @moduledoc  """
  Returns information about messages. If a message is not found, returns null on the corresponding position of the result.
  Returns object_ptr<Messages>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat the messages belong to. |
  | message_ids | string[] | Identifiers of the messages to get. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_messages.html).
  """

  defstruct "@type": "getMessages", "@extra": nil, chat_id: nil, message_ids: nil
end
defmodule ResetBackgrounds do
  @moduledoc  """
  Resets list of installed backgrounds to its default value.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reset_backgrounds.html).
  """

  defstruct "@type": "resetBackgrounds", "@extra": nil
end
defmodule SetStickerPositionInSet do
  @moduledoc  """
  Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | InputFile | Sticker. |
  | position | number | New position of the sticker in the set, zero-based. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_sticker_position_in_set.html).
  """

  defstruct "@type": "setStickerPositionInSet", "@extra": nil, sticker: nil, position: nil
end
defmodule DeleteChatHistory do
  @moduledoc  """
  Deletes all messages in the chat. Use Chat.can_be_deleted_only_for_self and Chat.can_be_deleted_for_all_users fields to find whether and how the method can be applied to the chat.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | remove_from_chat_list | bool | Pass true if the chat should be removed from the chat list. |
  | revoke | bool | Pass true to try to delete chat history for all users. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_chat_history.html).
  """

  defstruct "@type": "deleteChatHistory", "@extra": nil, chat_id: nil, remove_from_chat_list: nil, revoke: nil
end
defmodule SetInlineGameScore do
  @moduledoc  """
  Updates the game score of the specified user in a game; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_message_id | string | Inline message identifier. |
  | edit_message | bool | True, if the message should be edited. |
  | user_id | number | User identifier. |
  | score | number | The new score. |
  | force | bool | Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_inline_game_score.html).
  """

  defstruct "@type": "setInlineGameScore", "@extra": nil, inline_message_id: nil, edit_message: nil, user_id: nil, score: nil, force: nil
end
defmodule SendCallDebugInformation do
  @moduledoc  """
  Sends debug information for a call.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | call_id | number | Call identifier. |
  | debug_information | string | Debug information in application-specific format. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_call_debug_information.html).
  """

  defstruct "@type": "sendCallDebugInformation", "@extra": nil, call_id: nil, debug_information: nil
end
defmodule GetPassportAuthorizationForm do
  @moduledoc  """
  Returns a Telegram Passport authorization form for sharing data with a service.
  Returns object_ptr<PassportAuthorizationForm>.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_user_id | number | User identifier of the service's bot. |
  | scope | string | Telegram Passport element types requested by the service. |
  | public_key | string | Service's public_key. |
  | nonce | string | Authorization form nonce provided by the service. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_passport_authorization_form.html).
  """

  defstruct "@type": "getPassportAuthorizationForm", "@extra": nil, bot_user_id: nil, scope: nil, public_key: nil, nonce: nil
end
defmodule SetSupergroupStickerSet do
  @moduledoc  """
  Changes the sticker set of a supergroup; requires can_change_info rights.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Identifier of the supergroup. |
  | sticker_set_id | string | New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_supergroup_sticker_set.html).
  """

  defstruct "@type": "setSupergroupStickerSet", "@extra": nil, supergroup_id: nil, sticker_set_id: nil
end
defmodule GetAllPassportElements do
  @moduledoc  """
  Returns all available Telegram Passport elements.
  Returns object_ptr<PassportElements>.

  | Name | Type | Description |
  |------|------| ------------|
  | password | string | Password of the current user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_all_passport_elements.html).
  """

  defstruct "@type": "getAllPassportElements", "@extra": nil, password: nil
end
defmodule GetInstalledStickerSets do
  @moduledoc  """
  Returns a list of installed sticker sets.
  Returns object_ptr<StickerSets>.

  | Name | Type | Description |
  |------|------| ------------|
  | is_masks | bool | Pass true to return mask sticker sets; pass false to return ordinary sticker sets. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_installed_sticker_sets.html).
  """

  defstruct "@type": "getInstalledStickerSets", "@extra": nil, is_masks: nil
end
defmodule SendBotStartMessage do
  @moduledoc  """
  Invites a bot to a chat (if it is not yet a member) and sends it the /start command. Bots can't be invited to a private chat other than the chat with the bot. Bots can't be invited to channels (although they can be added as admins) and secret chats. Returns the sent message.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_user_id | number | Identifier of the bot. |
  | chat_id | string | Identifier of the target chat. |
  | parameter | string | A hidden parameter sent to the bot for deep linking purposes (<a href="https://core.telegram.org/bots">https://core.telegram.org/bots</a>#deep-linking). |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_bot_start_message.html).
  """

  defstruct "@type": "sendBotStartMessage", "@extra": nil, bot_user_id: nil, chat_id: nil, parameter: nil
end
defmodule RemoveBackground do
  @moduledoc  """
  Removes background from the list of installed backgrounds.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | background_id | string | The background indentifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_background.html).
  """

  defstruct "@type": "removeBackground", "@extra": nil, background_id: nil
end
defmodule DisableProxy do
  @moduledoc  """
  Disables the currently enabled proxy. Can be called before authorization.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1disable_proxy.html).
  """

  defstruct "@type": "disableProxy", "@extra": nil
end
defmodule CloseChat do
  @moduledoc  """
  Informs TDLib that the chat is closed by the user. Many useful activities depend on the chat being opened or closed.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1close_chat.html).
  """

  defstruct "@type": "closeChat", "@extra": nil, chat_id: nil
end
defmodule GetTopChats do
  @moduledoc  """
  Returns a list of frequently used chats. Supported only if the chat info database is enabled.
  Returns object_ptr<Chats>.

  | Name | Type | Description |
  |------|------| ------------|
  | category | TopChatCategory | Category of chats to be returned. |
  | limit | number | Maximum number of chats to be returned; up to 30. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_top_chats.html).
  """

  defstruct "@type": "getTopChats", "@extra": nil, category: nil, limit: nil
end
defmodule GetTrendingStickerSets do
  @moduledoc  """
  Returns a list of trending sticker sets.
  Returns object_ptr<StickerSets>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_trending_sticker_sets.html).
  """

  defstruct "@type": "getTrendingStickerSets", "@extra": nil
end
defmodule EditProxy do
  @moduledoc  """
  Edits an existing proxy server for network requests. Can be called before authorization.
  Returns object_ptr<Proxy>.

  | Name | Type | Description |
  |------|------| ------------|
  | proxy_id | number | Proxy identifier. |
  | server | string | Proxy server IP address. |
  | port | number | Proxy server port. |
  | enable | bool | True, if the proxy should be enabled. |
  | type | ProxyType | Proxy type. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_proxy.html).
  """

  defstruct "@type": "editProxy", "@extra": nil, proxy_id: nil, server: nil, port: nil, enable: nil, type: nil
end
defmodule GetStickerSet do
  @moduledoc  """
  Returns information about a sticker set by its identifier.
  Returns object_ptr<StickerSet>.

  | Name | Type | Description |
  |------|------| ------------|
  | set_id | string | Identifier of the sticker set. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_sticker_set.html).
  """

  defstruct "@type": "getStickerSet", "@extra": nil, set_id: nil
end
defmodule CreatePrivateChat do
  @moduledoc  """
  Returns an existing chat corresponding to a given user.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |
  | force | bool | If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_private_chat.html).
  """

  defstruct "@type": "createPrivateChat", "@extra": nil, user_id: nil, force: nil
end
defmodule GetActiveLiveLocationMessages do
  @moduledoc  """
  Returns all active live locations that should be updated by the client. The list is persistent across application restarts only if the message database is used.
  Returns object_ptr<Messages>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_active_live_location_messages.html).
  """

  defstruct "@type": "getActiveLiveLocationMessages", "@extra": nil
end
defmodule GetConnectedWebsites do
  @moduledoc  """
  Returns all website where the current user used Telegram to log in.
  Returns object_ptr<ConnectedWebsites>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_connected_websites.html).
  """

  defstruct "@type": "getConnectedWebsites", "@extra": nil
end
defmodule RemoveNotification do
  @moduledoc  """
  Removes an active notification from notification list. Needs to be called only if the notification is removed by the current user.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | notification_group_id | number | Identifier of notification group to which the notification belongs. |
  | notification_id | number | Identifier of removed notification. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_notification.html).
  """

  defstruct "@type": "removeNotification", "@extra": nil, notification_group_id: nil, notification_id: nil
end
defmodule SearchInstalledStickerSets do
  @moduledoc  """
  Searches for installed sticker sets by looking for specified query in their title and name.
  Returns object_ptr<StickerSets>.

  | Name | Type | Description |
  |------|------| ------------|
  | is_masks | bool | Pass true to return mask sticker sets; pass false to return ordinary sticker sets. |
  | query | string | Query to search for. |
  | limit | number | Maximum number of sticker sets to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_installed_sticker_sets.html).
  """

  defstruct "@type": "searchInstalledStickerSets", "@extra": nil, is_masks: nil, query: nil, limit: nil
end
defmodule GetSupportUser do
  @moduledoc  """
  Returns a user that can be contacted to get support.
  Returns object_ptr<User>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_support_user.html).
  """

  defstruct "@type": "getSupportUser", "@extra": nil
end
defmodule GetSavedAnimations do
  @moduledoc  """
  Returns saved animations.
  Returns object_ptr<Animations>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_saved_animations.html).
  """

  defstruct "@type": "getSavedAnimations", "@extra": nil
end
defmodule AddLocalMessage do
  @moduledoc  """
  Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Target chat. |
  | sender_user_id | number | Identifier of the user who will be shown as the sender of the message; may be 0 for channel posts. |
  | reply_to_message_id | string | Identifier of the message to reply to or 0. |
  | disable_notification | bool | Pass true to disable notification for the message. |
  | input_message_content | InputMessageContent | The content of the message to be added. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_local_message.html).
  """

  defstruct "@type": "addLocalMessage", "@extra": nil, chat_id: nil, sender_user_id: nil, reply_to_message_id: nil, disable_notification: nil, input_message_content: nil
end
defmodule GetSecretChat do
  @moduledoc  """
  Returns information about a secret chat by its identifier. This is an offline request.
  Returns object_ptr<SecretChat>.

  | Name | Type | Description |
  |------|------| ------------|
  | secret_chat_id | number | Secret chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_secret_chat.html).
  """

  defstruct "@type": "getSecretChat", "@extra": nil, secret_chat_id: nil
end
defmodule ResetAllNotificationSettings do
  @moduledoc  """
  Resets all notification settings to their default values. By default, all chats are unmuted, the sound is set to "default" and message previews are shown.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reset_all_notification_settings.html).
  """

  defstruct "@type": "resetAllNotificationSettings", "@extra": nil
end
defmodule SetNetworkType do
  @moduledoc  """
  Sets the current network type. Can be called before authorization. Calling this method forces all network connections to reopen, mitigating the delay in switching between different networks, so it should be called whenever the network is changed, even if the network type remains the same. Network type is used to check whether the library can use the network at all and also for collecting detailed network data usage statistics.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | type | NetworkType | The new network type. By default, <a class="el" href="classtd_1_1td__api_1_1network_type_other.html">networkTypeOther</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_network_type.html).
  """

  defstruct "@type": "setNetworkType", "@extra": nil, type: nil
end
defmodule GetLogStream do
  @moduledoc  """
  Returns information about currently used log stream for internal logging of TDLib. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<LogStream>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_log_stream.html).
  """

  defstruct "@type": "getLogStream", "@extra": nil
end
defmodule StopPoll do
  @moduledoc  """
  Stops a poll. A poll in a message can be stopped when the message has can_be_edited flag set.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat to which the poll belongs. |
  | message_id | string | Identifier of the message containing the poll. |
  | reply_markup | ReplyMarkup | The new message reply markup; for bots only. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1stop_poll.html).
  """

  defstruct "@type": "stopPoll", "@extra": nil, chat_id: nil, message_id: nil, reply_markup: nil
end
defmodule CreateSecretChat do
  @moduledoc  """
  Returns an existing chat corresponding to a known secret chat.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | secret_chat_id | number | Secret chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_secret_chat.html).
  """

  defstruct "@type": "createSecretChat", "@extra": nil, secret_chat_id: nil
end
defmodule SearchChatsOnServer do
  @moduledoc  """
  Searches for the specified query in the title and username of already known chats via request to the server. Returns chats in the order seen in the chat list.
  Returns object_ptr<Chats>.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |
  | limit | number | Maximum number of chats to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_chats_on_server.html).
  """

  defstruct "@type": "searchChatsOnServer", "@extra": nil, query: nil, limit: nil
end
defmodule GetStorageStatistics do
  @moduledoc  """
  Returns storage usage statistics. Can be called before authorization.
  Returns object_ptr<StorageStatistics>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_limit | number | Maximum number of chats with the largest storage usage for which separate statistics should be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_storage_statistics.html).
  """

  defstruct "@type": "getStorageStatistics", "@extra": nil, chat_limit: nil
end
defmodule GetTemporaryPasswordState do
  @moduledoc  """
  Returns information about the current temporary password.
  Returns object_ptr<TemporaryPasswordState>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_temporary_password_state.html).
  """

  defstruct "@type": "getTemporaryPasswordState", "@extra": nil
end
defmodule CheckChangePhoneNumberCode do
  @moduledoc  """
  Checks the authentication code sent to confirm a new phone number of the user.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | code | string | Verification code received by SMS, phone call or flash call. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_change_phone_number_code.html).
  """

  defstruct "@type": "checkChangePhoneNumberCode", "@extra": nil, code: nil
end
defmodule PinChatMessage do
  @moduledoc  """
  Pins a message in a chat; requires can_pin_messages rights.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat. |
  | message_id | string | Identifier of the new pinned message. |
  | disable_notification | bool | True, if there should be no notification about the pinned message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1pin_chat_message.html).
  """

  defstruct "@type": "pinChatMessage", "@extra": nil, chat_id: nil, message_id: nil, disable_notification: nil
end
defmodule TestCallVectorStringObject do
  @moduledoc  """
  Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization.
  Returns object_ptr<TestVectorStringObject>.

  | Name | Type | Description |
  |------|------| ------------|
  | x | testString[] | Vector of objects to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_call_vector_string_object.html).
  """

  defstruct "@type": "testCallVectorStringObject", "@extra": nil, x: nil
end
defmodule GetEmojiSuggestionsUrl do
  @moduledoc  """
  Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation.
  Returns object_ptr<HttpUrl>.

  | Name | Type | Description |
  |------|------| ------------|
  | language_code | string | Language code for which the emoji replacements will be suggested. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_emoji_suggestions_url.html).
  """

  defstruct "@type": "getEmojiSuggestionsUrl", "@extra": nil, language_code: nil
end
defmodule GetChatStatisticsUrl do
  @moduledoc  """
  Returns an HTTP URL with the chat statistics. Currently this method can be used only for channels.
  Returns object_ptr<HttpUrl>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | parameters | string | Parameters from "tg://statsrefresh?params=******" link. |
  | is_dark | bool | Pass true if a URL with the dark theme must be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_statistics_url.html).
  """

  defstruct "@type": "getChatStatisticsUrl", "@extra": nil, chat_id: nil, parameters: nil, is_dark: nil
end
defmodule ImportContacts do
  @moduledoc  """
  Adds new contacts or edits existing contacts; contacts' user identifiers are ignored.
  Returns object_ptr<ImportedContacts>.

  | Name | Type | Description |
  |------|------| ------------|
  | contacts | contact[] | The list of contacts to import or edit, contact's vCard are ignored and are not imported. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1import_contacts.html).
  """

  defstruct "@type": "importContacts", "@extra": nil, contacts: nil
end
defmodule GetApplicationConfig do
  @moduledoc  """
  Returns application config, provided by the server. Can be called before authorization.
  Returns object_ptr<JsonValue>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_application_config.html).
  """

  defstruct "@type": "getApplicationConfig", "@extra": nil
end
defmodule CreateTemporaryPassword do
  @moduledoc  """
  Creates a new temporary password for processing payments.
  Returns object_ptr<TemporaryPasswordState>.

  | Name | Type | Description |
  |------|------| ------------|
  | password | string | Persistent user password. |
  | valid_for | number | Time during which the temporary password will be valid, in seconds; should be between 60 and 86400. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_temporary_password.html).
  """

  defstruct "@type": "createTemporaryPassword", "@extra": nil, password: nil, valid_for: nil
end
defmodule RegisterDevice do
  @moduledoc  """
  Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription.
  Returns object_ptr<PushReceiverId>.

  | Name | Type | Description |
  |------|------| ------------|
  | device_token | DeviceToken | Device token. |
  | other_user_ids | number[] | List of user identifiers of other users currently using the client. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1register_device.html).
  """

  defstruct "@type": "registerDevice", "@extra": nil, device_token: nil, other_user_ids: nil
end
defmodule GetLanguagePackStrings do
  @moduledoc  """
  Returns strings from a language pack in the current localization target by their keys. Can be called before authorization.
  Returns object_ptr<LanguagePackStrings>.

  | Name | Type | Description |
  |------|------| ------------|
  | language_pack_id | string | Language pack identifier of the strings to be returned. |
  | keys | string[] | Language pack keys of the strings to be returned; leave empty to request all available strings. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_language_pack_strings.html).
  """

  defstruct "@type": "getLanguagePackStrings", "@extra": nil, language_pack_id: nil, keys: nil
end
defmodule SetUserPrivacySettingRules do
  @moduledoc  """
  Changes user privacy settings.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | setting | UserPrivacySetting | The privacy setting. |
  | rules | userPrivacySettingRules | The new privacy rules. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_user_privacy_setting_rules.html).
  """

  defstruct "@type": "setUserPrivacySettingRules", "@extra": nil, setting: nil, rules: nil
end
defmodule ReportChat do
  @moduledoc  """
  Reports a chat to the Telegram moderators. Supported only for supergroups, channels, or private chats with bots, since other chats can't be checked by moderators.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | reason | ChatReportReason | The reason for reporting the chat. |
  | message_ids | string[] | Identifiers of reported messages, if any. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1report_chat.html).
  """

  defstruct "@type": "reportChat", "@extra": nil, chat_id: nil, reason: nil, message_ids: nil
end
defmodule SearchEmojis do
  @moduledoc  """
  Searches for emojis by keywords. Supported only if the file database is enabled.
  Returns object_ptr<Emojis>.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text to search for. |
  | exact_match | bool | True, if only emojis, which exactly match text needs to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_emojis.html).
  """

  defstruct "@type": "searchEmojis", "@extra": nil, text: nil, exact_match: nil
end
defmodule AcceptCall do
  @moduledoc  """
  Accepts an incoming call.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | call_id | number | Call identifier. |
  | protocol | callProtocol | Description of the call protocols supported by the client. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1accept_call.html).
  """

  defstruct "@type": "acceptCall", "@extra": nil, call_id: nil, protocol: nil
end
defmodule SetChatPhoto do
  @moduledoc  """
  Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info rights. The photo will not be changed before request to the server has been completed.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | photo | InputFile | New chat photo. You can use a zero InputFileId to delete the chat photo. Files that are accessible only by HTTP URL are not acceptable. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_chat_photo.html).
  """

  defstruct "@type": "setChatPhoto", "@extra": nil, chat_id: nil, photo: nil
end
defmodule CreateBasicGroupChat do
  @moduledoc  """
  Returns an existing chat corresponding to a known basic group.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | basic_group_id | number | Basic group identifier. |
  | force | bool | If true, the chat will be created without network request. In this case all information about the chat except its type, title and photo can be incorrect. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_basic_group_chat.html).
  """

  defstruct "@type": "createBasicGroupChat", "@extra": nil, basic_group_id: nil, force: nil
end
defmodule SearchStickers do
  @moduledoc  """
  Searches for stickers from public sticker sets that correspond to a given emoji.
  Returns object_ptr<Stickers>.

  | Name | Type | Description |
  |------|------| ------------|
  | emoji | string | String representation of emoji; must be non-empty. |
  | limit | number | Maximum number of stickers to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_stickers.html).
  """

  defstruct "@type": "searchStickers", "@extra": nil, emoji: nil, limit: nil
end
defmodule GetFavoriteStickers do
  @moduledoc  """
  Returns favorite stickers.
  Returns object_ptr<Stickers>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_favorite_stickers.html).
  """

  defstruct "@type": "getFavoriteStickers", "@extra": nil
end
defmodule SetLogVerbosityLevel do
  @moduledoc  """
  Sets the verbosity level of the internal logging of TDLib. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | new_verbosity_level | number | New value of the verbosity level for logging. Value 0 corresponds to fatal errors, value 1 corresponds to errors, value 2 corresponds to warnings and debug warnings, value 3 corresponds to informational, value 4 corresponds to debug, value 5 corresponds to verbose debug, value greater than 5 and up to 1023 can be used to enable even more logging. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_log_verbosity_level.html).
  """

  defstruct "@type": "setLogVerbosityLevel", "@extra": nil, new_verbosity_level: nil
end
defmodule CreateNewStickerSet do
  @moduledoc  """
  Creates a new sticker set; for bots only. Returns the newly created sticker set.
  Returns object_ptr<StickerSet>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | Sticker set owner. |
  | title | string | Sticker set title; 1-64 characters. |
  | name | string | Sticker set name. Can contain only English letters, digits and underscores. Must end with <em>"<em>by</em><bot username>"</em> (<em><bot_username></em> is case insensitive); 1-64 characters. |
  | is_masks | bool | True, if stickers are masks. |
  | stickers | inputSticker[] | List of stickers to be added to the set. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_new_sticker_set.html).
  """

  defstruct "@type": "createNewStickerSet", "@extra": nil, user_id: nil, title: nil, name: nil, is_masks: nil, stickers: nil
end
defmodule SearchChatMembers do
  @moduledoc  """
  Searches for a specified query in the first name, last name and username of the members of a specified chat. Requires administrator rights in channels.
  Returns object_ptr<ChatMembers>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | query | string | Query to search for. |
  | limit | number | The maximum number of users to be returned. |
  | filter | ChatMembersFilter | The type of users to return. By default, <a class="el" href="classtd_1_1td__api_1_1chat_members_filter_members.html">chatMembersFilterMembers</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_chat_members.html).
  """

  defstruct "@type": "searchChatMembers", "@extra": nil, chat_id: nil, query: nil, limit: nil, filter: nil
end
defmodule GetLogTagVerbosityLevel do
  @moduledoc  """
  Returns current verbosity level for a specified TDLib internal log tag. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<LogVerbosityLevel>.

  | Name | Type | Description |
  |------|------| ------------|
  | tag | string | Logging tag to change verbosity level. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_log_tag_verbosity_level.html).
  """

  defstruct "@type": "getLogTagVerbosityLevel", "@extra": nil, tag: nil
end
defmodule BlockUser do
  @moduledoc  """
  Adds a user to the blacklist.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1block_user.html).
  """

  defstruct "@type": "blockUser", "@extra": nil, user_id: nil
end
defmodule SaveApplicationLogEvent do
  @moduledoc  """
  Saves application log event on the server. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | type | string | Event type. |
  | chat_id | string | Optional chat identifier, associated with the event. |
  | data | JsonValue | The log event data. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1save_application_log_event.html).
  """

  defstruct "@type": "saveApplicationLogEvent", "@extra": nil, type: nil, chat_id: nil, data: nil
end
defmodule OpenChat do
  @moduledoc  """
  Informs TDLib that the chat is opened by the user. Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are received only for opened chats).
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1open_chat.html).
  """

  defstruct "@type": "openChat", "@extra": nil, chat_id: nil
end
defmodule EditMessageMedia do
  @moduledoc  """
  Edits the content of a message with an animation, an audio, a document, a photo or a video. The media in the message can't be replaced if the message was set to self-destruct. Media can't be replaced by self-destructing media. Media in an album can be edited only to contain a photo or a video. Returns the edited message after the edit is completed on the server side.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | The chat the message belongs to. |
  | message_id | string | Identifier of the message. |
  | reply_markup | ReplyMarkup | The new message reply markup; for bots only. |
  | input_message_content | InputMessageContent | New content of the message. Must be one of the following types: InputMessageAnimation, InputMessageAudio, InputMessageDocument, InputMessagePhoto or InputMessageVideo. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_message_media.html).
  """

  defstruct "@type": "editMessageMedia", "@extra": nil, chat_id: nil, message_id: nil, reply_markup: nil, input_message_content: nil
end
defmodule SetGameScore do
  @moduledoc  """
  Updates the game score of the specified user in the game; for bots only.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | The chat to which the message with the game belongs. |
  | message_id | string | Identifier of the message. |
  | edit_message | bool | True, if the message should be edited. |
  | user_id | number | User identifier. |
  | score | number | The new score. |
  | force | bool | Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_game_score.html).
  """

  defstruct "@type": "setGameScore", "@extra": nil, chat_id: nil, message_id: nil, edit_message: nil, user_id: nil, score: nil, force: nil
end
defmodule GetDatabaseStatistics do
  @moduledoc  """
  Returns database statistics.
  Returns object_ptr<DatabaseStatistics>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_database_statistics.html).
  """

  defstruct "@type": "getDatabaseStatistics", "@extra": nil
end
defmodule EditInlineMessageReplyMarkup do
  @moduledoc  """
  Edits the reply markup of an inline message sent via a bot; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_message_id | string | Inline message identifier. |
  | reply_markup | ReplyMarkup | The new message reply markup. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_inline_message_reply_markup.html).
  """

  defstruct "@type": "editInlineMessageReplyMarkup", "@extra": nil, inline_message_id: nil, reply_markup: nil
end
defmodule SetChatPermissions do
  @moduledoc  """
  Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | permissions | chatPermissions | New non-administrator members permissions in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_chat_permissions.html).
  """

  defstruct "@type": "setChatPermissions", "@extra": nil, chat_id: nil, permissions: nil
end
defmodule DeleteSavedOrderInfo do
  @moduledoc  """
  Deletes saved order info.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_saved_order_info.html).
  """

  defstruct "@type": "deleteSavedOrderInfo", "@extra": nil
end
defmodule SearchMessages do
  @moduledoc  """
  Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)). For optimal performance the number of returned messages is chosen by the library.
  Returns object_ptr<Messages>.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |
  | offset_date | number | The date of the message starting from which the results should be fetched. Use 0 or any date in the future to get results from the last message. |
  | offset_chat_id | string | The chat identifier of the last found message, or 0 for the first request. |
  | offset_message_id | string | The message identifier of the last found message, or 0 for the first request. |
  | limit | number | The maximum number of messages to be returned, up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages.html).
  """

  defstruct "@type": "searchMessages", "@extra": nil, query: nil, offset_date: nil, offset_chat_id: nil, offset_message_id: nil, limit: nil
end
defmodule GetFile do
  @moduledoc  """
  Returns information about a file; this is an offline request.
  Returns object_ptr<File>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | number | Identifier of the file to get. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_file.html).
  """

  defstruct "@type": "getFile", "@extra": nil, file_id: nil
end
defmodule SendChatAction do
  @moduledoc  """
  Sends a notification about user activity in a chat.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | action | ChatAction | The action description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_chat_action.html).
  """

  defstruct "@type": "sendChatAction", "@extra": nil, chat_id: nil, action: nil
end
defmodule SetPinnedChats do
  @moduledoc  """
  Changes the order of pinned chats.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_ids | string[] | The new list of pinned chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_pinned_chats.html).
  """

  defstruct "@type": "setPinnedChats", "@extra": nil, chat_ids: nil
end
defmodule ResendMessages do
  @moduledoc  """
  Resends messages which failed to send. Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in messageSendingStateFailed.retry_after time passed. If a message is re-sent, the corresponding failed to send message is deleted. Returns the sent messages in the same order as the message identifiers passed in message_ids. If a message can't be re-sent, null will be returned instead of the message.
  Returns object_ptr<Messages>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat to send messages. |
  | message_ids | string[] | Identifiers of the messages to resend. Message identifiers must be in a strictly increasing order. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resend_messages.html).
  """

  defstruct "@type": "resendMessages", "@extra": nil, chat_id: nil, message_ids: nil
end
defmodule ClearRecentStickers do
  @moduledoc  """
  Clears the list of recently used stickers.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | is_attached | bool | Pass true to clear the list of stickers recently attached to photo or video files; pass false to clear the list of recently sent stickers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clear_recent_stickers.html).
  """

  defstruct "@type": "clearRecentStickers", "@extra": nil, is_attached: nil
end
defmodule UpgradeBasicGroupChatToSupergroupChat do
  @moduledoc  """
  Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat to upgrade. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1upgrade_basic_group_chat_to_supergroup_chat.html).
  """

  defstruct "@type": "upgradeBasicGroupChatToSupergroupChat", "@extra": nil, chat_id: nil
end
defmodule ResendEmailAddressVerificationCode do
  @moduledoc  """
  Re-sends the code to verify an email address to be added to a user's Telegram Passport.
  Returns object_ptr<EmailAddressAuthenticationCodeInfo>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resend_email_address_verification_code.html).
  """

  defstruct "@type": "resendEmailAddressVerificationCode", "@extra": nil
end
defmodule DisconnectAllWebsites do
  @moduledoc  """
  Disconnects all websites from the current user's Telegram account.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1disconnect_all_websites.html).
  """

  defstruct "@type": "disconnectAllWebsites", "@extra": nil
end
defmodule ChangeChatReportSpamState do
  @moduledoc  """
  Reports to the server whether a chat is a spam chat or not. Can be used only if ChatReportSpamState.can_report_spam is true. After this request, ChatReportSpamState.can_report_spam becomes false forever.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | is_spam_chat | bool | If true, the chat will be reported as spam; otherwise it will be marked as not spam. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1change_chat_report_spam_state.html).
  """

  defstruct "@type": "changeChatReportSpamState", "@extra": nil, chat_id: nil, is_spam_chat: nil
end
defmodule GetMessage do
  @moduledoc  """
  Returns information about a message.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat the message belongs to. |
  | message_id | string | Identifier of the message to get. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_message.html).
  """

  defstruct "@type": "getMessage", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule TestCallVectorString do
  @moduledoc  """
  Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization.
  Returns object_ptr<TestVectorString>.

  | Name | Type | Description |
  |------|------| ------------|
  | x | string[] | Vector of strings to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_call_vector_string.html).
  """

  defstruct "@type": "testCallVectorString", "@extra": nil, x: nil
end
defmodule DeleteFile do
  @moduledoc  """
  Deletes a file from the TDLib file cache.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | number | Identifier of the file to delete. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_file.html).
  """

  defstruct "@type": "deleteFile", "@extra": nil, file_id: nil
end
defmodule DownloadFile do
  @moduledoc  """
  Downloads a file from the cloud. Download progress and completion of the download will be notified through updateFile updates.
  Returns object_ptr<File>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | number | Identifier of the file to download. |
  | priority | number | Priority of the download (1-32). The higher the priority, the earlier the file will be downloaded. If the priorities of two files are equal, then the last one for which <a class="el" href="classtd_1_1td__api_1_1download_file.html">downloadFile</a> was called will be downloaded first. |
  | offset | number | The starting position from which the file should be downloaded. |
  | limit | number | Number of bytes which should be downloaded starting from the "offset" position before the download will be automatically cancelled; use 0 to download without a limit. |
  | synchronous | bool | If false, this request returns file state just after the download has been started. If true, this request returns file state only after the download has succeeded, has failed, has been cancelled or a new <a class="el" href="classtd_1_1td__api_1_1download_file.html">downloadFile</a> request with different offset/limit parameters was sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1download_file.html).
  """

  defstruct "@type": "downloadFile", "@extra": nil, file_id: nil, priority: nil, offset: nil, limit: nil, synchronous: nil
end
defmodule GetLanguagePackString do
  @moduledoc  """
  Returns a string stored in the local database from the specified localization target and language pack by its key. Returns a 404 error if the string is not found. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<LanguagePackStringValue>.

  | Name | Type | Description |
  |------|------| ------------|
  | language_pack_database_path | string | Path to the language pack database in which strings are stored. |
  | localization_target | string | Localization target to which the language pack belongs. |
  | language_pack_id | string | Language pack identifier. |
  | key | string | Language pack key of the string to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_language_pack_string.html).
  """

  defstruct "@type": "getLanguagePackString", "@extra": nil, language_pack_database_path: nil, localization_target: nil, language_pack_id: nil, key: nil
end
defmodule SetLogTagVerbosityLevel do
  @moduledoc  """
  Sets the verbosity level for a specified TDLib internal log tag. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | tag | string | Logging tag to change verbosity level. |
  | new_verbosity_level | number | New verbosity level; 1-1024. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_log_tag_verbosity_level.html).
  """

  defstruct "@type": "setLogTagVerbosityLevel", "@extra": nil, tag: nil, new_verbosity_level: nil
end
defmodule TestCallVectorInt do
  @moduledoc  """
  Returns the received vector of numbers; for testing only. This is an offline method. Can be called before authorization.
  Returns object_ptr<TestVectorInt>.

  | Name | Type | Description |
  |------|------| ------------|
  | x | number[] | Vector of numbers to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_call_vector_int.html).
  """

  defstruct "@type": "testCallVectorInt", "@extra": nil, x: nil
end
defmodule GetArchivedStickerSets do
  @moduledoc  """
  Returns a list of archived sticker sets.
  Returns object_ptr<StickerSets>.

  | Name | Type | Description |
  |------|------| ------------|
  | is_masks | bool | Pass true to return mask stickers sets; pass false to return ordinary sticker sets. |
  | offset_sticker_set_id | string | Identifier of the sticker set from which to return the result. |
  | limit | number | Maximum number of sticker sets to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_archived_sticker_sets.html).
  """

  defstruct "@type": "getArchivedStickerSets", "@extra": nil, is_masks: nil, offset_sticker_set_id: nil, limit: nil
end
defmodule DeleteChatMessagesFromUser do
  @moduledoc  """
  Deletes all messages sent by the specified user to a chat. Supported only in supergroups; requires can_delete_messages administrator privileges.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | user_id | number | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_chat_messages_from_user.html).
  """

  defstruct "@type": "deleteChatMessagesFromUser", "@extra": nil, chat_id: nil, user_id: nil
end
defmodule EditInlineMessageCaption do
  @moduledoc  """
  Edits the caption of an inline message sent via a bot; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_message_id | string | Inline message identifier. |
  | reply_markup | ReplyMarkup | The new message reply markup. |
  | caption | formattedText | New message content caption; 0-GetOption("message_caption_length_max") characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_inline_message_caption.html).
  """

  defstruct "@type": "editInlineMessageCaption", "@extra": nil, inline_message_id: nil, reply_markup: nil, caption: nil
end
defmodule SetPassportElementErrors do
  @moduledoc  """
  Informs the user that some of the elements in their Telegram Passport contain errors; for bots only. The user will not be able to resend the elements, until the errors are fixed.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |
  | errors | inputPassportElementError[] | The errors. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_passport_element_errors.html).
  """

  defstruct "@type": "setPassportElementErrors", "@extra": nil, user_id: nil, errors: nil
end
defmodule GetChatPinnedMessage do
  @moduledoc  """
  Returns information about a pinned chat message.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat the message belongs to. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_pinned_message.html).
  """

  defstruct "@type": "getChatPinnedMessage", "@extra": nil, chat_id: nil
end
defmodule GetGroupsInCommon do
  @moduledoc  """
  Returns a list of common group chats with a given user. Chats are sorted by their type and creation date.
  Returns object_ptr<Chats>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |
  | offset_chat_id | string | Chat identifier starting from which to return chats; use 0 for the first request. |
  | limit | number | Maximum number of chats to be returned; up to 100. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_groups_in_common.html).
  """

  defstruct "@type": "getGroupsInCommon", "@extra": nil, user_id: nil, offset_chat_id: nil, limit: nil
end
defmodule GetLogVerbosityLevel do
  @moduledoc  """
  Returns current verbosity level of the internal logging of TDLib. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<LogVerbosityLevel>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_log_verbosity_level.html).
  """

  defstruct "@type": "getLogVerbosityLevel", "@extra": nil
end
defmodule SetOption do
  @moduledoc  """
  Sets the value of an option. (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | The name of the option. |
  | value | OptionValue | The new value of the option. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_option.html).
  """

  defstruct "@type": "setOption", "@extra": nil, name: nil, value: nil
end
defmodule SetBotUpdatesStatus do
  @moduledoc  """
  Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | pending_update_count | number | The number of pending updates. |
  | error_message | string | The last error message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_bot_updates_status.html).
  """

  defstruct "@type": "setBotUpdatesStatus", "@extra": nil, pending_update_count: nil, error_message: nil
end
defmodule SearchBackground do
  @moduledoc  """
  Searches for a background by its name.
  Returns object_ptr<Background>.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | The name of the background. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_background.html).
  """

  defstruct "@type": "searchBackground", "@extra": nil, name: nil
end
defmodule RemoveNotificationGroup do
  @moduledoc  """
  Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | notification_group_id | number | Notification group identifier. |
  | max_notification_id | number | Maximum identifier of removed notifications. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_notification_group.html).
  """

  defstruct "@type": "removeNotificationGroup", "@extra": nil, notification_group_id: nil, max_notification_id: nil
end
defmodule GetRecoveryEmailAddress do
  @moduledoc  """
  Returns a 2-step verification recovery email address that was previously set up. This method can be used to verify a password provided by the user.
  Returns object_ptr<RecoveryEmailAddress>.

  | Name | Type | Description |
  |------|------| ------------|
  | password | string | The password for the current user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_recovery_email_address.html).
  """

  defstruct "@type": "getRecoveryEmailAddress", "@extra": nil, password: nil
end
defmodule GetPassportElement do
  @moduledoc  """
  Returns one of the available Telegram Passport elements.
  Returns object_ptr<PassportElement>.

  | Name | Type | Description |
  |------|------| ------------|
  | type | PassportElementType | Telegram Passport element type. |
  | password | string | Password of the current user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_passport_element.html).
  """

  defstruct "@type": "getPassportElement", "@extra": nil, type: nil, password: nil
end
defmodule ReorderInstalledStickerSets do
  @moduledoc  """
  Changes the order of installed sticker sets.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | is_masks | bool | Pass true to change the order of mask sticker sets; pass false to change the order of ordinary sticker sets. |
  | sticker_set_ids | string[] | Identifiers of installed sticker sets in the new correct order. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reorder_installed_sticker_sets.html).
  """

  defstruct "@type": "reorderInstalledStickerSets", "@extra": nil, is_masks: nil, sticker_set_ids: nil
end
defmodule SearchChats do
  @moduledoc  """
  Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the chat list.
  Returns object_ptr<Chats>.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. If the query is empty, returns up to 20 recently found chats. |
  | limit | number | Maximum number of chats to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_chats.html).
  """

  defstruct "@type": "searchChats", "@extra": nil, query: nil, limit: nil
end
defmodule RemoveRecentSticker do
  @moduledoc  """
  Removes a sticker from the list of recently used stickers.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | is_attached | bool | Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers. |
  | sticker | InputFile | Sticker file to delete. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_recent_sticker.html).
  """

  defstruct "@type": "removeRecentSticker", "@extra": nil, is_attached: nil, sticker: nil
end
defmodule RemoveRecentHashtag do
  @moduledoc  """
  Removes a hashtag from the list of recently used hashtags.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | hashtag | string | Hashtag to delete. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_recent_hashtag.html).
  """

  defstruct "@type": "removeRecentHashtag", "@extra": nil, hashtag: nil
end
defmodule ChangeImportedContacts do
  @moduledoc  """
  Changes imported contacts using the list of current user contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts. Query result depends on the result of the previous query, so only one query is possible at the same time.
  Returns object_ptr<ImportedContacts>.

  | Name | Type | Description |
  |------|------| ------------|
  | contacts | contact[] | The new list of contacts, contact's vCard are ignored and are not imported. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1change_imported_contacts.html).
  """

  defstruct "@type": "changeImportedContacts", "@extra": nil, contacts: nil
end
defmodule Close do
  @moduledoc  """
  Closes the TDLib instance. All databases will be flushed to disk and properly closed. After the close completes, updateAuthorizationState with authorizationStateClosed will be sent.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1close.html).
  """

  defstruct "@type": "close", "@extra": nil
end
defmodule GetUserPrivacySettingRules do
  @moduledoc  """
  Returns the current privacy settings.
  Returns object_ptr<UserPrivacySettingRules>.

  | Name | Type | Description |
  |------|------| ------------|
  | setting | UserPrivacySetting | The privacy setting. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_user_privacy_setting_rules.html).
  """

  defstruct "@type": "getUserPrivacySettingRules", "@extra": nil, setting: nil
end
defmodule FinishFileGeneration do
  @moduledoc  """
  Finishes the file generation.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | generation_id | string | The identifier of the generation process. |
  | error | error | If set, means that file generation has failed and should be terminated. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1finish_file_generation.html).
  """

  defstruct "@type": "finishFileGeneration", "@extra": nil, generation_id: nil, error: nil
end
defmodule GetPasswordState do
  @moduledoc  """
  Returns the current state of 2-step verification.
  Returns object_ptr<PasswordState>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_password_state.html).
  """

  defstruct "@type": "getPasswordState", "@extra": nil
end
defmodule GetChatEventLog do
  @moduledoc  """
  Returns a list of service actions taken by chat members and administrators in the last 48 hours. Available only in supergroups and channels. Requires administrator rights. Returns results in reverse chronological order (i. e., in order of decreasing event_id).
  Returns object_ptr<ChatEvents>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | query | string | Search query by which to filter events. |
  | from_event_id | string | Identifier of an event from which to return results. Use 0 to get results from the latest events. |
  | limit | number | Maximum number of events to return; up to 100. |
  | filters | chatEventLogFilters | The types of events to return. By default, all types will be returned. |
  | user_ids | number[] | User identifiers by which to filter events. By default, events relating to all users will be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_event_log.html).
  """

  defstruct "@type": "getChatEventLog", "@extra": nil, chat_id: nil, query: nil, from_event_id: nil, limit: nil, filters: nil, user_ids: nil
end
defmodule SendMessageAlbum do
  @moduledoc  """
  Sends messages grouped together into an album. Currently only photo and video messages can be grouped into an album. Returns sent messages.
  Returns object_ptr<Messages>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Target chat. |
  | reply_to_message_id | string | Identifier of a message to reply to or 0. |
  | disable_notification | bool | Pass true to disable notification for the messages. Not supported in secret chats. |
  | from_background | bool | Pass true if the messages are sent from the background. |
  | input_message_contents | InputMessageContent[] | Contents of messages to be sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_message_album.html).
  """

  defstruct "@type": "sendMessageAlbum", "@extra": nil, chat_id: nil, reply_to_message_id: nil, disable_notification: nil, from_background: nil, input_message_contents: nil
end
defmodule GetMessageLocally do
  @moduledoc  """
  Returns information about a message, if it is available locally without sending network request. This is an offline request.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat the message belongs to. |
  | message_id | string | Identifier of the message to get. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_message_locally.html).
  """

  defstruct "@type": "getMessageLocally", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule SearchCallMessages do
  @moduledoc  """
  Searches for call messages. Returns the results in reverse chronological order (i. e., in order of decreasing message_id). For optimal performance the number of returned messages is chosen by the library.
  Returns object_ptr<Messages>.

  | Name | Type | Description |
  |------|------| ------------|
  | from_message_id | string | Identifier of the message from which to search; use 0 to get results from the last message. |
  | limit | number | The maximum number of messages to be returned; up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached. |
  | only_missed | bool | If true, returns only messages with missed calls. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_call_messages.html).
  """

  defstruct "@type": "searchCallMessages", "@extra": nil, from_message_id: nil, limit: nil, only_missed: nil
end
defmodule UnblockUser do
  @moduledoc  """
  Removes a user from the blacklist.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1unblock_user.html).
  """

  defstruct "@type": "unblockUser", "@extra": nil, user_id: nil
end
defmodule GetChat do
  @moduledoc  """
  Returns information about a chat by its identifier, this is an offline request if the current user is not a bot.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat.html).
  """

  defstruct "@type": "getChat", "@extra": nil, chat_id: nil
end
defmodule CancelDownloadFile do
  @moduledoc  """
  Stops the downloading of a file. If a file has already been downloaded, does nothing.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | number | Identifier of a file to stop downloading. |
  | only_if_pending | bool | Pass true to stop downloading only if it hasn't been started, i.e. request hasn't been sent to server. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1cancel_download_file.html).
  """

  defstruct "@type": "cancelDownloadFile", "@extra": nil, file_id: nil, only_if_pending: nil
end
defmodule AddRecentSticker do
  @moduledoc  """
  Manually adds a new sticker to the list of recently used stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list.
  Returns object_ptr<Stickers>.

  | Name | Type | Description |
  |------|------| ------------|
  | is_attached | bool | Pass true to add the sticker to the list of stickers recently attached to photo or video files; pass false to add the sticker to the list of recently sent stickers. |
  | sticker | InputFile | Sticker file to add. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_recent_sticker.html).
  """

  defstruct "@type": "addRecentSticker", "@extra": nil, is_attached: nil, sticker: nil
end
defmodule DeleteProfilePhoto do
  @moduledoc  """
  Deletes a profile photo. If something changes, updateUser will be sent.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | profile_photo_id | string | Identifier of the profile photo to delete. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_profile_photo.html).
  """

  defstruct "@type": "deleteProfilePhoto", "@extra": nil, profile_photo_id: nil
end
defmodule GetPaymentForm do
  @moduledoc  """
  Returns an invoice payment form. This method should be called when the user presses inlineKeyboardButtonBuy.
  Returns object_ptr<PaymentForm>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier of the Invoice message. |
  | message_id | string | Message identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_payment_form.html).
  """

  defstruct "@type": "getPaymentForm", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule EditMessageLiveLocation do
  @moduledoc  """
  Edits the message content of a live location. Messages can be edited for a limited period of time specified in the live location. Returns the edited message after the edit is completed on the server side.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | The chat the message belongs to. |
  | message_id | string | Identifier of the message. |
  | reply_markup | ReplyMarkup | The new message reply markup; for bots only. |
  | location | location | New location content of the message; may be null. Pass null to stop sharing the live location. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_message_live_location.html).
  """

  defstruct "@type": "editMessageLiveLocation", "@extra": nil, chat_id: nil, message_id: nil, reply_markup: nil, location: nil
end
defmodule ResendPhoneNumberConfirmationCode do
  @moduledoc  """
  Resends phone number confirmation code.
  Returns object_ptr<AuthenticationCodeInfo>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resend_phone_number_confirmation_code.html).
  """

  defstruct "@type": "resendPhoneNumberConfirmationCode", "@extra": nil
end
defmodule SetChatDraftMessage do
  @moduledoc  """
  Changes the draft message in a chat.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | draft_message | draftMessage | New draft message; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_chat_draft_message.html).
  """

  defstruct "@type": "setChatDraftMessage", "@extra": nil, chat_id: nil, draft_message: nil
end
defmodule DeleteAccount do
  @moduledoc  """
  Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account. Can be called before authorization when the current authorization state is authorizationStateWaitPassword.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | reason | string | The reason why the account was deleted; optional. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_account.html).
  """

  defstruct "@type": "deleteAccount", "@extra": nil, reason: nil
end
defmodule ReadFilePart do
  @moduledoc  """
  Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the client has no direct access to TDLib's file system, because it is usually slower than a direct read from the file.
  Returns object_ptr<FilePart>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | number | Identifier of the file. The file must be located in the TDLib file cache. |
  | offset | number | The offset from which to read the file. |
  | count | number | Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1read_file_part.html).
  """

  defstruct "@type": "readFilePart", "@extra": nil, file_id: nil, offset: nil, count: nil
end
defmodule AnswerShippingQuery do
  @moduledoc  """
  Sets the result of a shipping query; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | shipping_query_id | string | Identifier of the shipping query. |
  | shipping_options | shippingOption[] | Available shipping options. |
  | error_message | string | An error message, empty on success. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answer_shipping_query.html).
  """

  defstruct "@type": "answerShippingQuery", "@extra": nil, shipping_query_id: nil, shipping_options: nil, error_message: nil
end
defmodule RecoverAuthenticationPassword do
  @moduledoc  """
  Recovers the password with a password recovery code sent to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | recovery_code | string | Recovery code to check. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recover_authentication_password.html).
  """

  defstruct "@type": "recoverAuthenticationPassword", "@extra": nil, recovery_code: nil
end
defmodule GetChatMessageCount do
  @moduledoc  """
  Returns approximate number of messages of the specified type in the chat.
  Returns object_ptr<Count>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat in which to count messages. |
  | filter | SearchMessagesFilter | Filter for message content; <a class="el" href="classtd_1_1td__api_1_1search_messages_filter_empty.html">searchMessagesFilterEmpty</a> is unsupported in this function. |
  | return_local | bool | If true, returns count that is available locally without sending network requests, returning -1 if the number of messages is unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_message_count.html).
  """

  defstruct "@type": "getChatMessageCount", "@extra": nil, chat_id: nil, filter: nil, return_local: nil
end
defmodule GetJsonString do
  @moduledoc  """
  Converts a JsonValue object to corresponding JSON-serialized string. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<Text>.

  | Name | Type | Description |
  |------|------| ------------|
  | json_value | JsonValue | The <a class="el" href="classtd_1_1td__api_1_1_json_value.html">JsonValue</a> object. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_json_string.html).
  """

  defstruct "@type": "getJsonString", "@extra": nil, json_value: nil
end
defmodule EditMessageReplyMarkup do
  @moduledoc  """
  Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | The chat the message belongs to. |
  | message_id | string | Identifier of the message. |
  | reply_markup | ReplyMarkup | The new message reply markup. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_message_reply_markup.html).
  """

  defstruct "@type": "editMessageReplyMarkup", "@extra": nil, chat_id: nil, message_id: nil, reply_markup: nil
end
defmodule SetRecoveryEmailAddress do
  @moduledoc  """
  Changes the 2-step verification recovery email address of the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed. If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds immediately and aborts all other requests waiting for an email confirmation.
  Returns object_ptr<PasswordState>.

  | Name | Type | Description |
  |------|------| ------------|
  | password | string | Password of the current user. |
  | new_recovery_email_address | string | New recovery email address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_recovery_email_address.html).
  """

  defstruct "@type": "setRecoveryEmailAddress", "@extra": nil, password: nil, new_recovery_email_address: nil
end
defmodule CancelUploadFile do
  @moduledoc  """
  Stops the uploading of a file. Supported only for files uploaded by using uploadFile. For other files the behavior is undefined.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | number | Identifier of the file to stop uploading. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1cancel_upload_file.html).
  """

  defstruct "@type": "cancelUploadFile", "@extra": nil, file_id: nil
end
defmodule DeleteMessages do
  @moduledoc  """
  Deletes messages.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | message_ids | string[] | Identifiers of the messages to be deleted. |
  | revoke | bool | Pass true to try to delete messages for all chat members. Always true for supergroups, channels and secret chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_messages.html).
  """

  defstruct "@type": "deleteMessages", "@extra": nil, chat_id: nil, message_ids: nil, revoke: nil
end
defmodule GetPassportAuthorizationFormAvailableElements do
  @moduledoc  """
  Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization form. Result can be received only once for each authorization form.
  Returns object_ptr<PassportElementsWithErrors>.

  | Name | Type | Description |
  |------|------| ------------|
  | autorization_form_id | number | Authorization form identifier. |
  | password | string | Password of the current user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_passport_authorization_form_available_elements.html).
  """

  defstruct "@type": "getPassportAuthorizationFormAvailableElements", "@extra": nil, autorization_form_id: nil, password: nil
end
defmodule SetScopeNotificationSettings do
  @moduledoc  """
  Changes notification settings for chats of a given type.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | scope | NotificationSettingsScope | Types of chats for which to change the notification settings. |
  | notification_settings | scopeNotificationSettings | The new notification settings for the given scope. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_scope_notification_settings.html).
  """

  defstruct "@type": "setScopeNotificationSettings", "@extra": nil, scope: nil, notification_settings: nil
end
defmodule GetBasicGroupFullInfo do
  @moduledoc  """
  Returns full information about a basic group by its identifier.
  Returns object_ptr<BasicGroupFullInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | basic_group_id | number | Basic group identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_basic_group_full_info.html).
  """

  defstruct "@type": "getBasicGroupFullInfo", "@extra": nil, basic_group_id: nil
end
defmodule DeleteSupergroup do
  @moduledoc  """
  Deletes a supergroup or channel along with all messages in the corresponding chat. This will release the supergroup or channel username and remove all members; requires creator privileges in the supergroup or channel. Chats with more than 1000 members can't be deleted using this method.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Identifier of the supergroup or channel. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_supergroup.html).
  """

  defstruct "@type": "deleteSupergroup", "@extra": nil, supergroup_id: nil
end
defmodule GetRecentStickers do
  @moduledoc  """
  Returns a list of recently used stickers.
  Returns object_ptr<Stickers>.

  | Name | Type | Description |
  |------|------| ------------|
  | is_attached | bool | Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_recent_stickers.html).
  """

  defstruct "@type": "getRecentStickers", "@extra": nil, is_attached: nil
end
defmodule GetRepliedMessage do
  @moduledoc  """
  Returns information about a message that is replied by given message.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat the message belongs to. |
  | message_id | string | Identifier of the message reply to which get. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_replied_message.html).
  """

  defstruct "@type": "getRepliedMessage", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule ParseTextEntities do
  @moduledoc  """
  Parses Bold, Italic, Code, Pre, PreCode and TextUrl entities contained in the text. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<FormattedText>.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | The text which should be parsed. |
  | parse_mode | TextParseMode | Text parse mode. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1parse_text_entities.html).
  """

  defstruct "@type": "parseTextEntities", "@extra": nil, text: nil, parse_mode: nil
end
defmodule RequestPasswordRecovery do
  @moduledoc  """
  Requests to send a password recovery code to an email address that was previously set up.
  Returns object_ptr<EmailAddressAuthenticationCodeInfo>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1request_password_recovery.html).
  """

  defstruct "@type": "requestPasswordRecovery", "@extra": nil
end
defmodule UploadStickerFile do
  @moduledoc  """
  Uploads a PNG image with a sticker; for bots only; returns the uploaded file.
  Returns object_ptr<File>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | Sticker file owner. |
  | png_sticker | InputFile | PNG image with the sticker; must be up to 512 kB in size and fit in 512x512 square. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1upload_sticker_file.html).
  """

  defstruct "@type": "uploadStickerFile", "@extra": nil, user_id: nil, png_sticker: nil
end
defmodule LogOut do
  @moduledoc  """
  Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_out.html).
  """

  defstruct "@type": "logOut", "@extra": nil
end
defmodule EditMessageCaption do
  @moduledoc  """
  Edits the message content caption. Returns the edited message after the edit is completed on the server side.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | The chat the message belongs to. |
  | message_id | string | Identifier of the message. |
  | reply_markup | ReplyMarkup | The new message reply markup; for bots only. |
  | caption | formattedText | New message content caption; 0-GetOption("message_caption_length_max") characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_message_caption.html).
  """

  defstruct "@type": "editMessageCaption", "@extra": nil, chat_id: nil, message_id: nil, reply_markup: nil, caption: nil
end
defmodule ViewMessages do
  @moduledoc  """
  Informs TDLib that messages are being viewed by the user. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels).
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | message_ids | string[] | The identifiers of the messages being viewed. |
  | force_read | bool | True, if messages in closed chats should be marked as read. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1view_messages.html).
  """

  defstruct "@type": "viewMessages", "@extra": nil, chat_id: nil, message_ids: nil, force_read: nil
end
defmodule AddProxy do
  @moduledoc  """
  Adds a proxy server for network requests. Can be called before authorization.
  Returns object_ptr<Proxy>.

  | Name | Type | Description |
  |------|------| ------------|
  | server | string | Proxy server IP address. |
  | port | number | Proxy server port. |
  | enable | bool | True, if the proxy should be enabled. |
  | type | ProxyType | Proxy type. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_proxy.html).
  """

  defstruct "@type": "addProxy", "@extra": nil, server: nil, port: nil, enable: nil, type: nil
end
defmodule AnswerCustomQuery do
  @moduledoc  """
  Answers a custom query; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | custom_query_id | string | Identifier of a custom query. |
  | data | string | JSON-serialized answer to the query. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answer_custom_query.html).
  """

  defstruct "@type": "answerCustomQuery", "@extra": nil, custom_query_id: nil, data: nil
end
defmodule AddChatMember do
  @moduledoc  """
  Adds a new member to a chat. Members can't be added to private or secret chats. Members will not be added until the chat state has been synchronized with the server.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | user_id | number | Identifier of the user. |
  | forward_limit | number | The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_chat_member.html).
  """

  defstruct "@type": "addChatMember", "@extra": nil, chat_id: nil, user_id: nil, forward_limit: nil
end
defmodule TestProxy do
  @moduledoc  """
  Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | server | string | Proxy server IP address. |
  | port | number | Proxy server port. |
  | type | ProxyType | Proxy type. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_proxy.html).
  """

  defstruct "@type": "testProxy", "@extra": nil, server: nil, port: nil, type: nil
end
defmodule CheckPhoneNumberConfirmationCode do
  @moduledoc  """
  Checks phone number confirmation code.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | code | string | The phone number confirmation code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_phone_number_confirmation_code.html).
  """

  defstruct "@type": "checkPhoneNumberConfirmationCode", "@extra": nil, code: nil
end
defmodule AddLogMessage do
  @moduledoc  """
  Adds a message to TDLib internal log. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | verbosity_level | number | Minimum verbosity level needed for the message to be logged, 0-1023. |
  | text | string | Text of a message to log. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_log_message.html).
  """

  defstruct "@type": "addLogMessage", "@extra": nil, verbosity_level: nil, text: nil
end
defmodule GetBackgrounds do
  @moduledoc  """
  Returns backgrounds installed by the user.
  Returns object_ptr<Backgrounds>.

  | Name | Type | Description |
  |------|------| ------------|
  | for_dark_theme | bool | True, if the backgrounds needs to be ordered for dark theme. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_backgrounds.html).
  """

  defstruct "@type": "getBackgrounds", "@extra": nil, for_dark_theme: nil
end
defmodule SearchHashtags do
  @moduledoc  """
  Searches for recently used hashtags by their prefix.
  Returns object_ptr<Hashtags>.

  | Name | Type | Description |
  |------|------| ------------|
  | prefix | string | Hashtag prefix to search for. |
  | limit | number | Maximum number of hashtags to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_hashtags.html).
  """

  defstruct "@type": "searchHashtags", "@extra": nil, prefix: nil, limit: nil
end
defmodule GetInlineGameHighScores do
  @moduledoc  """
  Returns game high scores and some part of the high score table in the range of the specified user; for bots only.
  Returns object_ptr<GameHighScores>.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_message_id | string | Inline message identifier. |
  | user_id | number | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_inline_game_high_scores.html).
  """

  defstruct "@type": "getInlineGameHighScores", "@extra": nil, inline_message_id: nil, user_id: nil
end
defmodule DeleteLanguagePack do
  @moduledoc  """
  Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | language_pack_id | string | Identifier of the language pack to delete. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_language_pack.html).
  """

  defstruct "@type": "deleteLanguagePack", "@extra": nil, language_pack_id: nil
end
defmodule ToggleChatDefaultDisableNotification do
  @moduledoc  """
  Changes the value of the default disable_notification parameter, used when a message is sent to a chat.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | default_disable_notification | bool | New value of default_disable_notification. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggle_chat_default_disable_notification.html).
  """

  defstruct "@type": "toggleChatDefaultDisableNotification", "@extra": nil, chat_id: nil, default_disable_notification: nil
end
defmodule RemoveProxy do
  @moduledoc  """
  Removes a proxy server. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | proxy_id | number | Proxy identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_proxy.html).
  """

  defstruct "@type": "removeProxy", "@extra": nil, proxy_id: nil
end
defmodule GetTextEntities do
  @moduledoc  """
  Returns all entities (mentions, hashtags, cashtags, bot commands, URLs, and email addresses) contained in the text. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<TextEntities>.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | The text in which to look for entites. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_text_entities.html).
  """

  defstruct "@type": "getTextEntities", "@extra": nil, text: nil
end
defmodule ToggleSupergroupIsAllHistoryAvailable do
  @moduledoc  """
  Toggles whether the message history of a supergroup is available to new members; requires can_change_info rights.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | The identifier of the supergroup. |
  | is_all_history_available | bool | The new value of is_all_history_available. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggle_supergroup_is_all_history_available.html).
  """

  defstruct "@type": "toggleSupergroupIsAllHistoryAvailable", "@extra": nil, supergroup_id: nil, is_all_history_available: nil
end
defmodule CheckAuthenticationBotToken do
  @moduledoc  """
  Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | The bot token. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_authentication_bot_token.html).
  """

  defstruct "@type": "checkAuthenticationBotToken", "@extra": nil, token: nil
end
defmodule OptimizeStorage do
  @moduledoc  """
  Optimizes storage usage, i.e. deletes some files and returns new storage usage statistics. Secret thumbnails can't be deleted.
  Returns object_ptr<StorageStatistics>.

  | Name | Type | Description |
  |------|------| ------------|
  | size | string | Limit on the total size of files after deletion. Pass -1 to use the default limit. |
  | ttl | number | Limit on the time that has passed since the last time a file was accessed (or creation time for some filesystems). Pass -1 to use the default limit. |
  | count | number | Limit on the total count of files after deletion. Pass -1 to use the default limit. |
  | immunity_delay | number | The amount of time after the creation of a file during which it can't be deleted, in seconds. Pass -1 to use the default value. |
  | file_types | FileType[] | If not empty, only files with the given type(s) are considered. By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted. |
  | chat_ids | string[] | If not empty, only files from the given chats are considered. Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos). |
  | exclude_chat_ids | string[] | If not empty, files from the given chats are excluded. Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos). |
  | chat_limit | number | Same as in <a class="el" href="classtd_1_1td__api_1_1get_storage_statistics.html">getStorageStatistics</a>. Affects only returned statistics. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1optimize_storage.html).
  """

  defstruct "@type": "optimizeStorage", "@extra": nil, size: nil, ttl: nil, count: nil, immunity_delay: nil, file_types: nil, chat_ids: nil, exclude_chat_ids: nil, chat_limit: nil
end
defmodule ClearImportedContacts do
  @moduledoc  """
  Clears all imported contacts, contact list remains unchanged.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clear_imported_contacts.html).
  """

  defstruct "@type": "clearImportedContacts", "@extra": nil
end
defmodule SetAlarm do
  @moduledoc  """
  Succeeds after a specified amount of time has passed. Can be called before authorization. Can be called before initialization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | seconds | double | Number of seconds before the function returns. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_alarm.html).
  """

  defstruct "@type": "setAlarm", "@extra": nil, seconds: nil
end
defmodule GetRecentInlineBots do
  @moduledoc  """
  Returns up to 20 recently used inline bots in the order of their last usage.
  Returns object_ptr<Users>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_recent_inline_bots.html).
  """

  defstruct "@type": "getRecentInlineBots", "@extra": nil
end
defmodule GetNetworkStatistics do
  @moduledoc  """
  Returns network data usage statistics. Can be called before authorization.
  Returns object_ptr<NetworkStatistics>.

  | Name | Type | Description |
  |------|------| ------------|
  | only_current | bool | If true, returns only data for the current library launch. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_network_statistics.html).
  """

  defstruct "@type": "getNetworkStatistics", "@extra": nil, only_current: nil
end
defmodule GetCallbackQueryAnswer do
  @moduledoc  """
  Sends a callback query to a bot and returns an answer. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  Returns object_ptr<CallbackQueryAnswer>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat with the message. |
  | message_id | string | Identifier of the message from which the query originated. |
  | payload | CallbackQueryPayload | Query payload. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_callback_query_answer.html).
  """

  defstruct "@type": "getCallbackQueryAnswer", "@extra": nil, chat_id: nil, message_id: nil, payload: nil
end
defmodule GetBasicGroup do
  @moduledoc  """
  Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot.
  Returns object_ptr<BasicGroup>.

  | Name | Type | Description |
  |------|------| ------------|
  | basic_group_id | number | Basic group identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_basic_group.html).
  """

  defstruct "@type": "getBasicGroup", "@extra": nil, basic_group_id: nil
end
defmodule GetProxies do
  @moduledoc  """
  Returns list of proxies that are currently set up. Can be called before authorization.
  Returns object_ptr<Proxies>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_proxies.html).
  """

  defstruct "@type": "getProxies", "@extra": nil
end
defmodule GetContacts do
  @moduledoc  """
  Returns all user contacts.
  Returns object_ptr<Users>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_contacts.html).
  """

  defstruct "@type": "getContacts", "@extra": nil
end
defmodule ResendChangePhoneNumberCode do
  @moduledoc  """
  Re-sends the authentication code sent to confirm a new phone number for the user. Works only if the previously received authenticationCodeInfo next_code_type was not null.
  Returns object_ptr<AuthenticationCodeInfo>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resend_change_phone_number_code.html).
  """

  defstruct "@type": "resendChangePhoneNumberCode", "@extra": nil
end
defmodule GetChatHistory do
  @moduledoc  """
  Returns messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). For optimal performance the number of returned messages is chosen by the library. This is an offline request if only_local is true.
  Returns object_ptr<Messages>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | from_message_id | string | Identifier of the message starting from which history must be fetched; use 0 to get results from the last message. |
  | offset | number | Specify 0 to get results from exactly the from_message_id or a negative offset up to 99 to get additionally some newer messages. |
  | limit | number | The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater or equal to -offset. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached. |
  | only_local | bool | If true, returns only messages that are available locally without sending network requests. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_history.html).
  """

  defstruct "@type": "getChatHistory", "@extra": nil, chat_id: nil, from_message_id: nil, offset: nil, limit: nil, only_local: nil
end
defmodule SetCustomLanguagePack do
  @moduledoc  """
  Adds or changes a custom local language pack to the current localization target.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | info | languagePackInfo | Information about the language pack. Language pack ID must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization. |
  | strings | languagePackString[] | Strings of the new language pack. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_custom_language_pack.html).
  """

  defstruct "@type": "setCustomLanguagePack", "@extra": nil, info: nil, strings: nil
end
defmodule GetSupergroup do
  @moduledoc  """
  Returns information about a supergroup or channel by its identifier. This is an offline request if the current user is not a bot.
  Returns object_ptr<Supergroup>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Supergroup or channel identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_supergroup.html).
  """

  defstruct "@type": "getSupergroup", "@extra": nil, supergroup_id: nil
end
defmodule GetPaymentReceipt do
  @moduledoc  """
  Returns information about a successful payment.
  Returns object_ptr<PaymentReceipt>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier of the PaymentSuccessful message. |
  | message_id | string | Message identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_payment_receipt.html).
  """

  defstruct "@type": "getPaymentReceipt", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule SendMessage do
  @moduledoc  """
  Sends a message. Returns the sent message.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Target chat. |
  | reply_to_message_id | string | Identifier of the message to reply to or 0. |
  | disable_notification | bool | Pass true to disable notification for the message. Not supported in secret chats. |
  | from_background | bool | Pass true if the message is sent from the background. |
  | reply_markup | ReplyMarkup | Markup for replying to the message; for bots only. |
  | input_message_content | InputMessageContent | The content of the message to be sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_message.html).
  """

  defstruct "@type": "sendMessage", "@extra": nil, chat_id: nil, reply_to_message_id: nil, disable_notification: nil, from_background: nil, reply_markup: nil, input_message_content: nil
end
defmodule GetGameHighScores do
  @moduledoc  """
  Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only.
  Returns object_ptr<GameHighScores>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | The chat that contains the message with the game. |
  | message_id | string | Identifier of the message. |
  | user_id | number | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_game_high_scores.html).
  """

  defstruct "@type": "getGameHighScores", "@extra": nil, chat_id: nil, message_id: nil, user_id: nil
end
defmodule SetPassword do
  @moduledoc  """
  Changes the password for the user. If a new recovery email address is specified, then the change will not be applied until the new recovery email address is confirmed.
  Returns object_ptr<PasswordState>.

  | Name | Type | Description |
  |------|------| ------------|
  | old_password | string | Previous password of the user. |
  | new_password | string | New password of the user; may be empty to remove the password. |
  | new_hint | string | New password hint; may be empty. |
  | set_recovery_email_address | bool | Pass true if the recovery email address should be changed. |
  | new_recovery_email_address | string | New recovery email address; may be empty. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_password.html).
  """

  defstruct "@type": "setPassword", "@extra": nil, old_password: nil, new_password: nil, new_hint: nil, set_recovery_email_address: nil, new_recovery_email_address: nil
end
defmodule UploadFile do
  @moduledoc  """
  Asynchronously uploads a file to the cloud without sending it in a message. updateFile will be used to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message.
  Returns object_ptr<File>.

  | Name | Type | Description |
  |------|------| ------------|
  | file | InputFile | File to upload. |
  | file_type | FileType | File type. |
  | priority | number | Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which <a class="el" href="classtd_1_1td__api_1_1upload_file.html">uploadFile</a> was called will be uploaded first. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1upload_file.html).
  """

  defstruct "@type": "uploadFile", "@extra": nil, file: nil, file_type: nil, priority: nil
end
defmodule SetChatDescription do
  @moduledoc  """
  Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info rights.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat. |
  | description | string | New chat description; 0-255 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_chat_description.html).
  """

  defstruct "@type": "setChatDescription", "@extra": nil, chat_id: nil, description: nil
end
defmodule AddSavedAnimation do
  @moduledoc  """
  Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first. Only non-secret video animations with MIME type "video/mp4" can be added to the list.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | animation | InputFile | The animation file to be added. Only animations known to the server (i.e. successfully sent via a message) can be added to the list. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_saved_animation.html).
  """

  defstruct "@type": "addSavedAnimation", "@extra": nil, animation: nil
end
defmodule GetFileExtension do
  @moduledoc  """
  Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<Text>.

  | Name | Type | Description |
  |------|------| ------------|
  | mime_type | string | The MIME type of the file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_file_extension.html).
  """

  defstruct "@type": "getFileExtension", "@extra": nil, mime_type: nil
end
defmodule SetProfilePhoto do
  @moduledoc  """
  Uploads a new profile photo for the current user. If something changes, updateUser will be sent.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | InputFile | Profile photo to set. <a class="el" href="classtd_1_1td__api_1_1input_file_id.html">inputFileId</a> and <a class="el" href="classtd_1_1td__api_1_1input_file_remote.html">inputFileRemote</a> may still be unsupported. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_profile_photo.html).
  """

  defstruct "@type": "setProfilePhoto", "@extra": nil, photo: nil
end
defmodule SendCustomRequest do
  @moduledoc  """
  Sends a custom request; for bots only.
  Returns object_ptr<CustomRequestResult>.

  | Name | Type | Description |
  |------|------| ------------|
  | method | string | The method name. |
  | parameters | string | JSON-serialized method parameters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_custom_request.html).
  """

  defstruct "@type": "sendCustomRequest", "@extra": nil, method: nil, parameters: nil
end
defmodule GetCountryCode do
  @moduledoc  """
  Uses current user IP to found their country. Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization.
  Returns object_ptr<Text>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_country_code.html).
  """

  defstruct "@type": "getCountryCode", "@extra": nil
end
defmodule AddStickerToSet do
  @moduledoc  """
  Adds a new sticker to a set; for bots only. Returns the sticker set.
  Returns object_ptr<StickerSet>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | Sticker set owner. |
  | name | string | Sticker set name. |
  | sticker | inputSticker | Sticker to add to the set. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_sticker_to_set.html).
  """

  defstruct "@type": "addStickerToSet", "@extra": nil, user_id: nil, name: nil, sticker: nil
end
defmodule SetAutoDownloadSettings do
  @moduledoc  """
  Sets auto-download settings.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | settings | autoDownloadSettings | New user auto-download settings. |
  | type | NetworkType | Type of the network for which the new settings are applied. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_auto_download_settings.html).
  """

  defstruct "@type": "setAutoDownloadSettings", "@extra": nil, settings: nil, type: nil
end
defmodule GetChats do
  @moduledoc  """
  Returns an ordered list of chats. Chats are sorted by the pair (order, chat_id) in decreasing order. (For example, to get a list of chats from the beginning, the offset_order should be equal to a biggest signed 64-bit number 9223372036854775807 == 2^63 - 1). For optimal performance the number of returned chats is chosen by the library.
  Returns object_ptr<Chats>.

  | Name | Type | Description |
  |------|------| ------------|
  | offset_order | string | Chat order to return chats from. |
  | offset_chat_id | string | Chat identifier to return chats from. |
  | limit | number | The maximum number of chats to be returned. It is possible that fewer chats than the limit are returned even if the end of the list is not reached. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chats.html).
  """

  defstruct "@type": "getChats", "@extra": nil, offset_order: nil, offset_chat_id: nil, limit: nil
end
defmodule TestCallBytes do
  @moduledoc  """
  Returns the received bytes; for testing only. This is an offline method. Can be called before authorization.
  Returns object_ptr<TestBytes>.

  | Name | Type | Description |
  |------|------| ------------|
  | x | string | Bytes to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_call_bytes.html).
  """

  defstruct "@type": "testCallBytes", "@extra": nil, x: nil
end
defmodule SearchPublicChats do
  @moduledoc  """
  Searches public chats by looking for specified query in their username and title. Currently only private chats, supergroups and channels can be public. Returns a meaningful number of results. Returns nothing if the length of the searched username prefix is less than 5. Excludes private chats with contacts and chats from the chat list from the results.
  Returns object_ptr<Chats>.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_public_chats.html).
  """

  defstruct "@type": "searchPublicChats", "@extra": nil, query: nil
end
defmodule LeaveChat do
  @moduledoc  """
  Removes current user from chat members. Private and secret chats can't be left using this method.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1leave_chat.html).
  """

  defstruct "@type": "leaveChat", "@extra": nil, chat_id: nil
end
defmodule SynchronizeLanguagePack do
  @moduledoc  """
  Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method doesn't need to be called explicitly for the current used/base language packs. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | language_pack_id | string | Language pack identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1synchronize_language_pack.html).
  """

  defstruct "@type": "synchronizeLanguagePack", "@extra": nil, language_pack_id: nil
end
defmodule GetProxyLink do
  @moduledoc  """
  Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization.
  Returns object_ptr<Text>.

  | Name | Type | Description |
  |------|------| ------------|
  | proxy_id | number | Proxy identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_proxy_link.html).
  """

  defstruct "@type": "getProxyLink", "@extra": nil, proxy_id: nil
end
defmodule CloseSecretChat do
  @moduledoc  """
  Closes a secret chat, effectively transfering its state to secretChatStateClosed.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | secret_chat_id | number | Secret chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1close_secret_chat.html).
  """

  defstruct "@type": "closeSecretChat", "@extra": nil, secret_chat_id: nil
end
defmodule RemoveSavedAnimation do
  @moduledoc  """
  Removes an animation from the list of saved animations.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | animation | InputFile | Animation file to be removed. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_saved_animation.html).
  """

  defstruct "@type": "removeSavedAnimation", "@extra": nil, animation: nil
end
defmodule GetPublicMessageLink do
  @moduledoc  """
  Returns a public HTTPS link to a message. Available only for messages in supergroups and channels with username.
  Returns object_ptr<PublicMessageLink>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat to which the message belongs. |
  | message_id | string | Identifier of the message. |
  | for_album | bool | Pass true if a link for a whole media album should be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_public_message_link.html).
  """

  defstruct "@type": "getPublicMessageLink", "@extra": nil, chat_id: nil, message_id: nil, for_album: nil
end
defmodule ProcessPushNotification do
  @moduledoc  """
  Handles a push notification. Returns error with code 406 if the push notification is not supported and connection to the server is required to fetch new data. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | payload | string | JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1process_push_notification.html).
  """

  defstruct "@type": "processPushNotification", "@extra": nil, payload: nil
end
defmodule ResendAuthenticationCode do
  @moduledoc  """
  Re-sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitCode and the next_code_type of the result is not null.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resend_authentication_code.html).
  """

  defstruct "@type": "resendAuthenticationCode", "@extra": nil
end
defmodule GetUserProfilePhotos do
  @moduledoc  """
  Returns the profile photos of a user. The result of this query may be outdated: some photos might have been deleted already.
  Returns object_ptr<UserProfilePhotos>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |
  | offset | number | The number of photos to skip; must be non-negative. |
  | limit | number | Maximum number of photos to be returned; up to 100. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_user_profile_photos.html).
  """

  defstruct "@type": "getUserProfilePhotos", "@extra": nil, user_id: nil, offset: nil, limit: nil
end
defmodule JoinChat do
  @moduledoc  """
  Adds current user as a new member to a chat. Private and secret chats can't be joined using this method.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1join_chat.html).
  """

  defstruct "@type": "joinChat", "@extra": nil, chat_id: nil
end
defmodule SetAccountTtl do
  @moduledoc  """
  Changes the period of inactivity after which the account of the current user will automatically be deleted.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | ttl | accountTtl | New account TTL. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_account_ttl.html).
  """

  defstruct "@type": "setAccountTtl", "@extra": nil, ttl: nil
end
defmodule DisconnectWebsite do
  @moduledoc  """
  Disconnects website from the current user's Telegram account.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | website_id | string | Website identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1disconnect_website.html).
  """

  defstruct "@type": "disconnectWebsite", "@extra": nil, website_id: nil
end
defmodule GetMessageLinkInfo do
  @moduledoc  """
  Returns information about a public or private message link.
  Returns object_ptr<MessageLinkInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | The message link in the format "<a href="https://t.me/c/...",">https://t.me/c/...&quot;,</a> or "tg://privatepost?...", or "<a href="https://t.me/username/...",">https://t.me/username/...&quot;,</a> or "tg://resolve?...". |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_message_link_info.html).
  """

  defstruct "@type": "getMessageLinkInfo", "@extra": nil, url: nil
end
defmodule SearchSecretMessages do
  @moduledoc  """
  Searches for messages in secret chats. Returns the results in reverse chronological order. For optimal performance the number of returned messages is chosen by the library.
  Returns object_ptr<FoundMessages>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat in which to search. Specify 0 to search in all secret chats. |
  | query | string | Query to search for. If empty, <a class="el" href="classtd_1_1td__api_1_1search_chat_messages.html">searchChatMessages</a> should be used instead. |
  | from_search_id | string | The identifier from the result of a previous request, use 0 to get results from the last message. |
  | limit | number | Maximum number of messages to be returned; up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached. |
  | filter | SearchMessagesFilter | A filter for the content of messages in the search results. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_secret_messages.html).
  """

  defstruct "@type": "searchSecretMessages", "@extra": nil, chat_id: nil, query: nil, from_search_id: nil, limit: nil, filter: nil
end
defmodule GetWebPageInstantView do
  @moduledoc  """
  Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page.
  Returns object_ptr<WebPageInstantView>.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | The web page URL. |
  | force_full | bool | If true, the full instant view for the web page will be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_web_page_instant_view.html).
  """

  defstruct "@type": "getWebPageInstantView", "@extra": nil, url: nil, force_full: nil
end
defmodule TerminateSession do
  @moduledoc  """
  Terminates a session of the current user.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | session_id | string | Session identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1terminate_session.html).
  """

  defstruct "@type": "terminateSession", "@extra": nil, session_id: nil
end
defmodule GetMapThumbnailFile do
  @moduledoc  """
  Returns information about a file with a map thumbnail in PNG format. Only map thumbnail files with size less than 1MB can be downloaded.
  Returns object_ptr<File>.

  | Name | Type | Description |
  |------|------| ------------|
  | location | location | Location of the map center. |
  | zoom | number | Map zoom level; 13-20. |
  | width | number | Map width in pixels before applying scale; 16-1024. |
  | height | number | Map height in pixels before applying scale; 16-1024. |
  | scale | number | Map scale; 1-3. |
  | chat_id | string | Identifier of a chat, in which the thumbnail will be shown. Use 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_map_thumbnail_file.html).
  """

  defstruct "@type": "getMapThumbnailFile", "@extra": nil, location: nil, zoom: nil, width: nil, height: nil, scale: nil, chat_id: nil
end
defmodule GetCurrentState do
  @moduledoc  """
  Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState/UpdateUser/UpdateNewChat and others. This is especially usefull if TDLib is run in a separate process. This is an offline method. Can be called before authorization.
  Returns object_ptr<Updates>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_current_state.html).
  """

  defstruct "@type": "getCurrentState", "@extra": nil
end
defmodule GetFileMimeType do
  @moduledoc  """
  Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<Text>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_name | string | The name of the file or path to the file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_file_mime_type.html).
  """

  defstruct "@type": "getFileMimeType", "@extra": nil, file_name: nil
end
defmodule GetWebPagePreview do
  @moduledoc  """
  Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview.
  Returns object_ptr<WebPage>.

  | Name | Type | Description |
  |------|------| ------------|
  | text | formattedText | Message text with formatting. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_web_page_preview.html).
  """

  defstruct "@type": "getWebPagePreview", "@extra": nil, text: nil
end
defmodule ClearAllDraftMessages do
  @moduledoc  """
  Clears draft messages in all chats.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | exclude_secret_chats | bool | If true, local draft messages in secret chats will not be cleared. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clear_all_draft_messages.html).
  """

  defstruct "@type": "clearAllDraftMessages", "@extra": nil, exclude_secret_chats: nil
end
defmodule JoinChatByInviteLink do
  @moduledoc  """
  Uses an invite link to add the current user to the chat if possible. The new member will not be added until the chat state has been synchronized with the server.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | invite_link | string | Invite link to import; should begin with "<a href="https://t.me/joinchat/",">https://t.me/joinchat/&quot;,</a> "<a href="https://telegram.me/joinchat/",">https://telegram.me/joinchat/&quot;,</a> or "<a href="https://telegram.dog/joinchat/"">https://telegram.dog/joinchat/&quot;</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1join_chat_by_invite_link.html).
  """

  defstruct "@type": "joinChatByInviteLink", "@extra": nil, invite_link: nil
end
defmodule CheckAuthenticationPassword do
  @moduledoc  """
  Checks the authentication password for correctness. Works only when the current authorization state is authorizationStateWaitPassword.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | password | string | The password to check. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_authentication_password.html).
  """

  defstruct "@type": "checkAuthenticationPassword", "@extra": nil, password: nil
end
defmodule SetPassportElement do
  @moduledoc  """
  Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first.
  Returns object_ptr<PassportElement>.

  | Name | Type | Description |
  |------|------| ------------|
  | element | InputPassportElement | Input Telegram Passport element. |
  | password | string | Password of the current user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_passport_element.html).
  """

  defstruct "@type": "setPassportElement", "@extra": nil, element: nil, password: nil
end
defmodule CheckEmailAddressVerificationCode do
  @moduledoc  """
  Checks the email address verification code for Telegram Passport.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | code | string | Verification code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_email_address_verification_code.html).
  """

  defstruct "@type": "checkEmailAddressVerificationCode", "@extra": nil, code: nil
end
defmodule GetAccountTtl do
  @moduledoc  """
  Returns the period of inactivity after which the account of the current user will automatically be deleted.
  Returns object_ptr<AccountTtl>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_account_ttl.html).
  """

  defstruct "@type": "getAccountTtl", "@extra": nil
end
defmodule AddRecentlyFoundChat do
  @moduledoc  """
  Adds a chat to the list of recently found chats. The chat is added to the beginning of the list. If the chat is already in the list, it will be removed from the list first.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat to add. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_recently_found_chat.html).
  """

  defstruct "@type": "addRecentlyFoundChat", "@extra": nil, chat_id: nil
end
defmodule GetScopeNotificationSettings do
  @moduledoc  """
  Returns the notification settings for chats of a given type.
  Returns object_ptr<ScopeNotificationSettings>.

  | Name | Type | Description |
  |------|------| ------------|
  | scope | NotificationSettingsScope | Types of chats for which to return the notification settings information. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_scope_notification_settings.html).
  """

  defstruct "@type": "getScopeNotificationSettings", "@extra": nil, scope: nil
end
defmodule AddChatMembers do
  @moduledoc  """
  Adds multiple new members to a chat. Currently this option is only available for supergroups and channels. This option can't be used to join a chat. Members can't be added to a channel if it has more than 200 members. Members will not be added until the chat state has been synchronized with the server.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | user_ids | number[] | Identifiers of the users to be added to the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_chat_members.html).
  """

  defstruct "@type": "addChatMembers", "@extra": nil, chat_id: nil, user_ids: nil
end
defmodule SendPaymentForm do
  @moduledoc  """
  Sends a filled-out payment form to the bot for final verification.
  Returns object_ptr<PaymentResult>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier of the Invoice message. |
  | message_id | string | Message identifier. |
  | order_info_id | string | Identifier returned by ValidateOrderInfo, or an empty string. |
  | shipping_option_id | string | Identifier of a chosen shipping option, if applicable. |
  | credentials | InputCredentials | The credentials chosen by user for payment. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_payment_form.html).
  """

  defstruct "@type": "sendPaymentForm", "@extra": nil, chat_id: nil, message_id: nil, order_info_id: nil, shipping_option_id: nil, credentials: nil
end
defmodule SetChatTitle do
  @moduledoc  """
  Changes the chat title. Supported only for basic groups, supergroups and channels. Requires can_change_info rights. The title will not be changed until the request to the server has been completed.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | title | string | New title of the chat; 1-128 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_chat_title.html).
  """

  defstruct "@type": "setChatTitle", "@extra": nil, chat_id: nil, title: nil
end
defmodule GetSupergroupFullInfo do
  @moduledoc  """
  Returns full information about a supergroup or channel by its identifier, cached for up to 1 minute.
  Returns object_ptr<SupergroupFullInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Supergroup or channel identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_supergroup_full_info.html).
  """

  defstruct "@type": "getSupergroupFullInfo", "@extra": nil, supergroup_id: nil
end
defmodule SetUsername do
  @moduledoc  """
  Changes the username of the current user. If something changes, updateUser will be sent.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | username | string | The new value of the username. Use an empty string to remove the username. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_username.html).
  """

  defstruct "@type": "setUsername", "@extra": nil, username: nil
end
defmodule GetLocalizationTargetInfo do
  @moduledoc  """
  Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization.
  Returns object_ptr<LocalizationTargetInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | only_local | bool | If true, returns only locally available information without sending network requests. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_localization_target_info.html).
  """

  defstruct "@type": "getLocalizationTargetInfo", "@extra": nil, only_local: nil
end
defmodule EditInlineMessageText do
  @moduledoc  """
  Edits the text of an inline text or game message sent via a bot; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_message_id | string | Inline message identifier. |
  | reply_markup | ReplyMarkup | The new message reply markup. |
  | input_message_content | InputMessageContent | New text content of the message. Should be of type InputMessageText. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_inline_message_text.html).
  """

  defstruct "@type": "editInlineMessageText", "@extra": nil, inline_message_id: nil, reply_markup: nil, input_message_content: nil
end
defmodule RecoverPassword do
  @moduledoc  """
  Recovers the password using a recovery code sent to an email address that was previously set up.
  Returns object_ptr<PasswordState>.

  | Name | Type | Description |
  |------|------| ------------|
  | recovery_code | string | Recovery code to check. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recover_password.html).
  """

  defstruct "@type": "recoverPassword", "@extra": nil, recovery_code: nil
end
defmodule GetPushReceiverId do
  @moduledoc  """
  Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<PushReceiverId>.

  | Name | Type | Description |
  |------|------| ------------|
  | payload | string | JSON-encoded push notification payload. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_push_receiver_id.html).
  """

  defstruct "@type": "getPushReceiverId", "@extra": nil, payload: nil
end
defmodule TestNetwork do
  @moduledoc  """
  Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_network.html).
  """

  defstruct "@type": "testNetwork", "@extra": nil
end
defmodule TerminateAllOtherSessions do
  @moduledoc  """
  Terminates all other sessions of the current user.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1terminate_all_other_sessions.html).
  """

  defstruct "@type": "terminateAllOtherSessions", "@extra": nil
end
defmodule CleanFileName do
  @moduledoc  """
  Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<Text>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_name | string | File name or path to the file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clean_file_name.html).
  """

  defstruct "@type": "cleanFileName", "@extra": nil, file_name: nil
end
defmodule ResendRecoveryEmailAddressCode do
  @moduledoc  """
  Resends the 2-step verification recovery email address verification code.
  Returns object_ptr<PasswordState>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resend_recovery_email_address_code.html).
  """

  defstruct "@type": "resendRecoveryEmailAddressCode", "@extra": nil
end
defmodule EditInlineMessageMedia do
  @moduledoc  """
  Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message sent via a bot; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_message_id | string | Inline message identifier. |
  | reply_markup | ReplyMarkup | The new message reply markup; for bots only. |
  | input_message_content | InputMessageContent | New content of the message. Must be one of the following types: InputMessageAnimation, InputMessageAudio, InputMessageDocument, InputMessagePhoto or InputMessageVideo. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_inline_message_media.html).
  """

  defstruct "@type": "editInlineMessageMedia", "@extra": nil, inline_message_id: nil, reply_markup: nil, input_message_content: nil
end
defmodule GetMessageLink do
  @moduledoc  """
  Returns a private HTTPS link to a message in a chat. Available only for already sent messages in supergroups and channels. The link will work only for members of the chat.
  Returns object_ptr<HttpUrl>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat to which the message belongs. |
  | message_id | string | Identifier of the message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_message_link.html).
  """

  defstruct "@type": "getMessageLink", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule SendPhoneNumberConfirmationCode do
  @moduledoc  """
  Sends phone number confirmation code. Should be called when user presses "https://t.me/confirmphone?phone=*******&hash=**********" or "tg://confirmphone?phone=*******&hash=**********" link.
  Returns object_ptr<AuthenticationCodeInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | hash | string | Value of the "hash" parameter from the link. |
  | phone_number | string | Value of the "phone" parameter from the link. |
  | settings | phoneNumberAuthenticationSettings | Settings for the authentication of the user's phone number. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_phone_number_confirmation_code.html).
  """

  defstruct "@type": "sendPhoneNumberConfirmationCode", "@extra": nil, hash: nil, phone_number: nil, settings: nil
end
defmodule CreateNewSupergroupChat do
  @moduledoc  """
  Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the new chat; 1-128 characters. |
  | is_channel | bool | True, if a channel chat should be created. |
  | description | string | Chat description; 0-255 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_new_supergroup_chat.html).
  """

  defstruct "@type": "createNewSupergroupChat", "@extra": nil, title: nil, is_channel: nil, description: nil
end
defmodule GetSupergroupMembers do
  @moduledoc  """
  Returns information about members or banned users in a supergroup or channel. Can be used only if SupergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters.
  Returns object_ptr<ChatMembers>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Identifier of the supergroup or channel. |
  | filter | SupergroupMembersFilter | The type of users to return. By default, supergroupMembersRecent. |
  | offset | number | Number of users to skip. |
  | limit | number | The maximum number of users be returned; up to 200. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_supergroup_members.html).
  """

  defstruct "@type": "getSupergroupMembers", "@extra": nil, supergroup_id: nil, filter: nil, offset: nil, limit: nil
end
defmodule ResendPhoneNumberVerificationCode do
  @moduledoc  """
  Re-sends the code to verify a phone number to be added to a user's Telegram Passport.
  Returns object_ptr<AuthenticationCodeInfo>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resend_phone_number_verification_code.html).
  """

  defstruct "@type": "resendPhoneNumberVerificationCode", "@extra": nil
end
defmodule GetOption do
  @moduledoc  """
  Returns the value of an option by its name. (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before authorization.
  Returns object_ptr<OptionValue>.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | The name of the option. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_option.html).
  """

  defstruct "@type": "getOption", "@extra": nil, name: nil
end
defmodule SendPassportAuthorizationForm do
  @moduledoc  """
  Sends a Telegram Passport authorization form, effectively sharing data with the service. This method must be called after getPassportAuthorizationFormAvailableElements if some previously available elements need to be used.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | autorization_form_id | number | Authorization form identifier. |
  | types | PassportElementType[] | Types of Telegram Passport elements chosen by user to complete the authorization form. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_passport_authorization_form.html).
  """

  defstruct "@type": "sendPassportAuthorizationForm", "@extra": nil, autorization_form_id: nil, types: nil
end
defmodule GetAutoDownloadSettingsPresets do
  @moduledoc  """
  Returns auto-download settings presets for the currently logged in user.
  Returns object_ptr<AutoDownloadSettingsPresets>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_auto_download_settings_presets.html).
  """

  defstruct "@type": "getAutoDownloadSettingsPresets", "@extra": nil
end
defmodule GetAuthorizationState do
  @moduledoc  """
  Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state.
  Returns object_ptr<AuthorizationState>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_authorization_state.html).
  """

  defstruct "@type": "getAuthorizationState", "@extra": nil
end
defmodule CreateNewSecretChat do
  @moduledoc  """
  Creates a new secret chat. Returns the newly created chat.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | Identifier of the target user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_new_secret_chat.html).
  """

  defstruct "@type": "createNewSecretChat", "@extra": nil, user_id: nil
end
defmodule GetChatMessageByDate do
  @moduledoc  """
  Returns the last message sent in a chat no later than the specified date.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | date | number | Point in time (Unix timestamp) relative to which to search for messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_message_by_date.html).
  """

  defstruct "@type": "getChatMessageByDate", "@extra": nil, chat_id: nil, date: nil
end
defmodule SearchPublicChat do
  @moduledoc  """
  Searches a public chat by its username. Currently only private chats, supergroups and channels can be public. Returns the chat if found; otherwise an error is returned.
  Returns object_ptr<Chat>.

  | Name | Type | Description |
  |------|------| ------------|
  | username | string | Username to be resolved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_public_chat.html).
  """

  defstruct "@type": "searchPublicChat", "@extra": nil, username: nil
end
defmodule AnswerInlineQuery do
  @moduledoc  """
  Sets the result of an inline query; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_query_id | string | Identifier of the inline query. |
  | is_personal | bool | True, if the result of the query can be cached for the specified user. |
  | results | InputInlineQueryResult[] | The results of the query. |
  | cache_time | number | Allowed time to cache the results of the query, in seconds. |
  | next_offset | string | Offset for the next inline query; pass an empty string if there are no more results. |
  | switch_pm_text | string | If non-empty, this text should be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter. |
  | switch_pm_parameter | string | The parameter for the bot start message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answer_inline_query.html).
  """

  defstruct "@type": "answerInlineQuery", "@extra": nil, inline_query_id: nil, is_personal: nil, results: nil, cache_time: nil, next_offset: nil, switch_pm_text: nil, switch_pm_parameter: nil
end
defmodule GetFileDownloadedPrefixSize do
  @moduledoc  """
  Returns file downloaded prefix size from a given offset.
  Returns object_ptr<Count>.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | number | Identifier of the file. |
  | offset | number | Offset from which downloaded prefix size should be calculated. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_file_downloaded_prefix_size.html).
  """

  defstruct "@type": "getFileDownloadedPrefixSize", "@extra": nil, file_id: nil, offset: nil
end
defmodule GetStickers do
  @moduledoc  """
  Returns stickers from the installed sticker sets that correspond to a given emoji. If the emoji is not empty, favorite and recently used stickers may also be returned.
  Returns object_ptr<Stickers>.

  | Name | Type | Description |
  |------|------| ------------|
  | emoji | string | String representation of emoji. If empty, returns all known installed stickers. |
  | limit | number | Maximum number of stickers to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_stickers.html).
  """

  defstruct "@type": "getStickers", "@extra": nil, emoji: nil, limit: nil
end
defmodule ResetNetworkStatistics do
  @moduledoc  """
  Resets all network data usage statistics to zero. Can be called before authorization.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reset_network_statistics.html).
  """

  defstruct "@type": "resetNetworkStatistics", "@extra": nil
end
defmodule GetBlockedUsers do
  @moduledoc  """
  Returns users that were blocked by the current user.
  Returns object_ptr<Users>.

  | Name | Type | Description |
  |------|------| ------------|
  | offset | number | Number of users to skip in the result; must be non-negative. |
  | limit | number | Maximum number of users to return; up to 100. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_blocked_users.html).
  """

  defstruct "@type": "getBlockedUsers", "@extra": nil, offset: nil, limit: nil
end
defmodule CreateCall do
  @moduledoc  """
  Creates a new call.
  Returns object_ptr<CallId>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | Identifier of the user to be called. |
  | protocol | callProtocol | Description of the call protocols supported by the client. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1create_call.html).
  """

  defstruct "@type": "createCall", "@extra": nil, user_id: nil, protocol: nil
end
defmodule GetBackgroundUrl do
  @moduledoc  """
  Constructs a persistent HTTP URL for a background.
  Returns object_ptr<HttpUrl>.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Background name. |
  | type | BackgroundType | Background type. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_background_url.html).
  """

  defstruct "@type": "getBackgroundUrl", "@extra": nil, name: nil, type: nil
end
defmodule ForwardMessages do
  @moduledoc  """
  Forwards previously sent messages. Returns the forwarded messages in the same order as the message identifiers passed in message_ids. If a message can't be forwarded, null will be returned instead of the message.
  Returns object_ptr<Messages>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat to which to forward messages. |
  | from_chat_id | string | Identifier of the chat from which to forward messages. |
  | message_ids | string[] | Identifiers of the messages to forward. |
  | disable_notification | bool | Pass true to disable notification for the message, doesn't work if messages are forwarded to a secret chat. |
  | from_background | bool | Pass true if the messages are sent from the background. |
  | as_album | bool | True, if the messages should be grouped into an album after forwarding. For this to work, no more than 10 messages may be forwarded, and all of them must be photo or video messages. |
  | send_copy | bool | True, if content of the messages needs to be copied without links to the original messages. Always true if the messages are forwarded to a secret chat. |
  | remove_caption | bool | True, if media captions of message copies needs to be removed. Ignored if send_copy is false. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1forward_messages.html).
  """

  defstruct "@type": "forwardMessages", "@extra": nil, chat_id: nil, from_chat_id: nil, message_ids: nil, disable_notification: nil, from_background: nil, as_album: nil, send_copy: nil, remove_caption: nil
end
defmodule ChangePhoneNumber do
  @moduledoc  """
  Changes the phone number of the user and sends an authentication code to the user's new phone number. On success, returns information about the sent code.
  Returns object_ptr<AuthenticationCodeInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number | string | The new phone number of the user in international format. |
  | settings | phoneNumberAuthenticationSettings | Settings for the authentication of the user's phone number. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1change_phone_number.html).
  """

  defstruct "@type": "changePhoneNumber", "@extra": nil, phone_number: nil, settings: nil
end
defmodule TestSquareInt do
  @moduledoc  """
  Returns the squared received number; for testing only. This is an offline method. Can be called before authorization.
  Returns object_ptr<TestInt>.

  | Name | Type | Description |
  |------|------| ------------|
  | x | number | Number to square. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_square_int.html).
  """

  defstruct "@type": "testSquareInt", "@extra": nil, x: nil
end
defmodule GetStorageStatisticsFast do
  @moduledoc  """
  Quickly returns approximate storage usage statistics. Can be called before authorization.
  Returns object_ptr<StorageStatisticsFast>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_storage_statistics_fast.html).
  """

  defstruct "@type": "getStorageStatisticsFast", "@extra": nil
end
defmodule DeletePassportElement do
  @moduledoc  """
  Deletes a Telegram Passport element.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | type | PassportElementType | Element type. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_passport_element.html).
  """

  defstruct "@type": "deletePassportElement", "@extra": nil, type: nil
end
defmodule Destroy do
  @moduledoc  """
  Closes the TDLib instance, destroying all local data without a proper logout. The current user session will remain in the list of all active sessions. All local data will be destroyed. After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1destroy.html).
  """

  defstruct "@type": "destroy", "@extra": nil
end
defmodule GetActiveSessions do
  @moduledoc  """
  Returns all active sessions of the current user.
  Returns object_ptr<Sessions>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_active_sessions.html).
  """

  defstruct "@type": "getActiveSessions", "@extra": nil
end
defmodule TestReturnError do
  @moduledoc  """
  Returns the specified error and ensures that the Error object is used; for testing only. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<Error>.

  | Name | Type | Description |
  |------|------| ------------|
  | error | error | The error to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_return_error.html).
  """

  defstruct "@type": "testReturnError", "@extra": nil, error: nil
end
defmodule ToggleChatIsMarkedAsUnread do
  @moduledoc  """
  Changes the marked as unread state of a chat.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | is_marked_as_unread | bool | New value of is_marked_as_unread. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggle_chat_is_marked_as_unread.html).
  """

  defstruct "@type": "toggleChatIsMarkedAsUnread", "@extra": nil, chat_id: nil, is_marked_as_unread: nil
end
defmodule SetCustomLanguagePackString do
  @moduledoc  """
  Adds, edits or deletes a string in a custom local language pack. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | language_pack_id | string | Identifier of a previously added custom local language pack in the current localization target. |
  | new_string | languagePackString | New language pack string. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_custom_language_pack_string.html).
  """

  defstruct "@type": "setCustomLanguagePackString", "@extra": nil, language_pack_id: nil, new_string: nil
end
defmodule SetName do
  @moduledoc  """
  Changes the first and last name of the current user. If something changes, updateUser will be sent.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | first_name | string | The new value of the first name for the user; 1-64 characters. |
  | last_name | string | The new value of the optional last name for the user; 0-64 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_name.html).
  """

  defstruct "@type": "setName", "@extra": nil, first_name: nil, last_name: nil
end
defmodule GetChatMember do
  @moduledoc  """
  Returns information about a single member of a chat.
  Returns object_ptr<ChatMember>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | user_id | number | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_member.html).
  """

  defstruct "@type": "getChatMember", "@extra": nil, chat_id: nil, user_id: nil
end
defmodule RemoveContacts do
  @moduledoc  """
  Removes users from the contact list.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_ids | number[] | Identifiers of users to be deleted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_contacts.html).
  """

  defstruct "@type": "removeContacts", "@extra": nil, user_ids: nil
end
defmodule SetFileGenerationProgress do
  @moduledoc  """
  Informs TDLib on a file generation prograss.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | generation_id | string | The identifier of the generation process. |
  | expected_size | number | Expected size of the generated file, in bytes; 0 if unknown. |
  | local_prefix_size | number | The number of bytes already generated. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_file_generation_progress.html).
  """

  defstruct "@type": "setFileGenerationProgress", "@extra": nil, generation_id: nil, expected_size: nil, local_prefix_size: nil
end
defmodule ReadAllChatMentions do
  @moduledoc  """
  Marks all mentions in a chat as read.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1read_all_chat_mentions.html).
  """

  defstruct "@type": "readAllChatMentions", "@extra": nil, chat_id: nil
end
defmodule AnswerPreCheckoutQuery do
  @moduledoc  """
  Sets the result of a pre-checkout query; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | pre_checkout_query_id | string | Identifier of the pre-checkout query. |
  | error_message | string | An error message, empty on success. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answer_pre_checkout_query.html).
  """

  defstruct "@type": "answerPreCheckoutQuery", "@extra": nil, pre_checkout_query_id: nil, error_message: nil
end
defmodule TestCallVectorIntObject do
  @moduledoc  """
  Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization.
  Returns object_ptr<TestVectorIntObject>.

  | Name | Type | Description |
  |------|------| ------------|
  | x | testInt[] | Vector of objects to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_call_vector_int_object.html).
  """

  defstruct "@type": "testCallVectorIntObject", "@extra": nil, x: nil
end
defmodule RemoveTopChat do
  @moduledoc  """
  Removes a chat from the list of frequently used chats. Supported only if the chat info database is enabled.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | category | TopChatCategory | Category of frequently used chats. |
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_top_chat.html).
  """

  defstruct "@type": "removeTopChat", "@extra": nil, category: nil, chat_id: nil
end
defmodule RemoveRecentlyFoundChat do
  @moduledoc  """
  Removes a chat from the list of recently found chats.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat to be removed. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_recently_found_chat.html).
  """

  defstruct "@type": "removeRecentlyFoundChat", "@extra": nil, chat_id: nil
end
defmodule SetDatabaseEncryptionKey do
  @moduledoc  """
  Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | new_encryption_key | string | New encryption key. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_database_encryption_key.html).
  """

  defstruct "@type": "setDatabaseEncryptionKey", "@extra": nil, new_encryption_key: nil
end
defmodule ViewTrendingStickerSets do
  @moduledoc  """
  Informs the server that some trending sticker sets have been viewed by the user.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker_set_ids | string[] | Identifiers of viewed trending sticker sets. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1view_trending_sticker_sets.html).
  """

  defstruct "@type": "viewTrendingStickerSets", "@extra": nil, sticker_set_ids: nil
end
defmodule SendCallRating do
  @moduledoc  """
  Sends a call rating.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | call_id | number | Call identifier. |
  | rating | number | Call rating; 1-5. |
  | comment | string | An optional user comment if the rating is less than 5. |
  | problems | CallProblem[] | List of the exact types of problems with the call, specified by the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_call_rating.html).
  """

  defstruct "@type": "sendCallRating", "@extra": nil, call_id: nil, rating: nil, comment: nil, problems: nil
end
defmodule TestCallEmpty do
  @moduledoc  """
  Does nothing; for testing only. This is an offline method. Can be called before authorization.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_call_empty.html).
  """

  defstruct "@type": "testCallEmpty", "@extra": nil
end
defmodule ChangeStickerSet do
  @moduledoc  """
  Installs/uninstalls or activates/archives a sticker set.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | set_id | string | Identifier of the sticker set. |
  | is_installed | bool | The new value of is_installed. |
  | is_archived | bool | The new value of is_archived. A sticker set can't be installed and archived simultaneously. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1change_sticker_set.html).
  """

  defstruct "@type": "changeStickerSet", "@extra": nil, set_id: nil, is_installed: nil, is_archived: nil
end
defmodule SendChatScreenshotTakenNotification do
  @moduledoc  """
  Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_chat_screenshot_taken_notification.html).
  """

  defstruct "@type": "sendChatScreenshotTakenNotification", "@extra": nil, chat_id: nil
end
defmodule GetPreferredCountryLanguage do
  @moduledoc  """
  Returns an IETF language tag of the language preferred in the country, which should be used to fill native fields in Telegram Passport personal details. Returns a 404 error if unknown.
  Returns object_ptr<Text>.

  | Name | Type | Description |
  |------|------| ------------|
  | country_code | string | A two-letter ISO 3166-1 alpha-2 country code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_preferred_country_language.html).
  """

  defstruct "@type": "getPreferredCountryLanguage", "@extra": nil, country_code: nil
end
defmodule SearchStickerSets do
  @moduledoc  """
  Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results.
  Returns object_ptr<StickerSets>.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_sticker_sets.html).
  """

  defstruct "@type": "searchStickerSets", "@extra": nil, query: nil
end
defmodule ToggleChatIsPinned do
  @moduledoc  """
  Changes the pinned state of a chat. You can pin up to GetOption("pinned_chat_count_max") non-secret chats and the same number of secret chats.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | is_pinned | bool | New value of is_pinned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggle_chat_is_pinned.html).
  """

  defstruct "@type": "toggleChatIsPinned", "@extra": nil, chat_id: nil, is_pinned: nil
end
defmodule GetChatNotificationSettingsExceptions do
  @moduledoc  """
  Returns list of chats with non-default notification settings.
  Returns object_ptr<Chats>.

  | Name | Type | Description |
  |------|------| ------------|
  | scope | NotificationSettingsScope | If specified, only chats from the specified scope will be returned. |
  | compare_sound | bool | If true, also chats with non-default sound will be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_chat_notification_settings_exceptions.html).
  """

  defstruct "@type": "getChatNotificationSettingsExceptions", "@extra": nil, scope: nil, compare_sound: nil
end
defmodule RemoveStickerFromSet do
  @moduledoc  """
  Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | InputFile | Sticker. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_sticker_from_set.html).
  """

  defstruct "@type": "removeStickerFromSet", "@extra": nil, sticker: nil
end
defmodule RegisterUser do
  @moduledoc  """
  Finishes user registration. Works only when the current authorization state is authorizationStateWaitRegistration.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | first_name | string | The first name of the user; 1-64 characters. |
  | last_name | string | The last name of the user; 0-64 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1register_user.html).
  """

  defstruct "@type": "registerUser", "@extra": nil, first_name: nil, last_name: nil
end
defmodule SetLogStream do
  @moduledoc  """
  Sets new log stream for internal logging of TDLib. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | log_stream | LogStream | New log stream. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_log_stream.html).
  """

  defstruct "@type": "setLogStream", "@extra": nil, log_stream: nil
end
defmodule GetUser do
  @moduledoc  """
  Returns information about a user by their identifier. This is an offline request if the current user is not a bot.
  Returns object_ptr<User>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_user.html).
  """

  defstruct "@type": "getUser", "@extra": nil, user_id: nil
end
defmodule SearchStickerSet do
  @moduledoc  """
  Searches for a sticker set by its name.
  Returns object_ptr<StickerSet>.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Name of the sticker set. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_sticker_set.html).
  """

  defstruct "@type": "searchStickerSet", "@extra": nil, name: nil
end
defmodule GetJsonValue do
  @moduledoc  """
  Converts a JSON-serialized string to corresponding JsonValue object. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<JsonValue>.

  | Name | Type | Description |
  |------|------| ------------|
  | json | string | The JSON-serialized string. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_json_value.html).
  """

  defstruct "@type": "getJsonValue", "@extra": nil, json: nil
end
defmodule DiscardCall do
  @moduledoc  """
  Discards a call.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | call_id | number | Call identifier. |
  | is_disconnected | bool | True, if the user was disconnected. |
  | duration | number | The call duration, in seconds. |
  | connection_id | string | Identifier of the connection used during the call. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1discard_call.html).
  """

  defstruct "@type": "discardCall", "@extra": nil, call_id: nil, is_disconnected: nil, duration: nil, connection_id: nil
end
defmodule CheckRecoveryEmailAddressCode do
  @moduledoc  """
  Checks the 2-step verification recovery email address verification code.
  Returns object_ptr<PasswordState>.

  | Name | Type | Description |
  |------|------| ------------|
  | code | string | Verification code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_recovery_email_address_code.html).
  """

  defstruct "@type": "checkRecoveryEmailAddressCode", "@extra": nil, code: nil
end
defmodule AddFavoriteSticker do
  @moduledoc  """
  Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | InputFile | Sticker file to add. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_favorite_sticker.html).
  """

  defstruct "@type": "addFavoriteSticker", "@extra": nil, sticker: nil
end
defmodule EditMessageText do
  @moduledoc  """
  Edits the text of a message (or a text of a game message). Returns the edited message after the edit is completed on the server side.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | The chat the message belongs to. |
  | message_id | string | Identifier of the message. |
  | reply_markup | ReplyMarkup | The new message reply markup; for bots only. |
  | input_message_content | InputMessageContent | New text content of the message. Should be of type InputMessageText. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_message_text.html).
  """

  defstruct "@type": "editMessageText", "@extra": nil, chat_id: nil, message_id: nil, reply_markup: nil, input_message_content: nil
end
defmodule SetBio do
  @moduledoc  """
  Changes the bio of the current user.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | bio | string | The new value of the user bio; 0-70 characters without line feeds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_bio.html).
  """

  defstruct "@type": "setBio", "@extra": nil, bio: nil
end
defmodule CheckPhoneNumberVerificationCode do
  @moduledoc  """
  Checks the phone number verification code for Telegram Passport.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | code | string | Verification code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_phone_number_verification_code.html).
  """

  defstruct "@type": "checkPhoneNumberVerificationCode", "@extra": nil, code: nil
end
defmodule AddCustomServerLanguagePack do
  @moduledoc  """
  Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | language_pack_id | string | Identifier of a language pack to be added; may be different from a name that is used in an "<a href="https://t.me/setlanguage/"">https://t.me/setlanguage/&quot;</a> link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1add_custom_server_language_pack.html).
  """

  defstruct "@type": "addCustomServerLanguagePack", "@extra": nil, language_pack_id: nil
end
defmodule GetRecentlyVisitedTMeUrls do
  @moduledoc  """
  Returns t.me URLs recently visited by a newly registered user.
  Returns object_ptr<TMeUrls>.

  | Name | Type | Description |
  |------|------| ------------|
  | referrer | string | Google Play referrer to identify the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_recently_visited_t_me_urls.html).
  """

  defstruct "@type": "getRecentlyVisitedTMeUrls", "@extra": nil, referrer: nil
end
defmodule GetLogTags do
  @moduledoc  """
  Returns list of available TDLib internal log tags, for example, ["actor", "binlog", "connections", "notifications", "proxy"]. This is an offline method. Can be called before authorization. Can be called synchronously.
  Returns object_ptr<LogTags>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_log_tags.html).
  """

  defstruct "@type": "getLogTags", "@extra": nil
end
defmodule SetPollAnswer do
  @moduledoc  """
  Changes user answer to a poll.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat to which the poll belongs. |
  | message_id | string | Identifier of the message containing the poll. |
  | option_ids | number[] | 0-based identifiers of options, chosen by the user. Currently user can't choose more than 1 option. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_poll_answer.html).
  """

  defstruct "@type": "setPollAnswer", "@extra": nil, chat_id: nil, message_id: nil, option_ids: nil
end
defmodule SetSupergroupUsername do
  @moduledoc  """
  Changes the username of a supergroup or channel, requires creator privileges in the supergroup or channel.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | number | Identifier of the supergroup or channel. |
  | username | string | New value of the username. Use an empty string to remove the username. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_supergroup_username.html).
  """

  defstruct "@type": "setSupergroupUsername", "@extra": nil, supergroup_id: nil, username: nil
end
defmodule SetAuthenticationPhoneNumber do
  @moduledoc  """
  Sets the phone number of the user and sends an authentication code to the user. Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode or authorizationStateWaitPassword.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number | string | The phone number of the user, in international format. |
  | settings | phoneNumberAuthenticationSettings | Settings for the authentication of the user's phone number. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_authentication_phone_number.html).
  """

  defstruct "@type": "setAuthenticationPhoneNumber", "@extra": nil, phone_number: nil, settings: nil
end
defmodule PingProxy do
  @moduledoc  """
  Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization.
  Returns object_ptr<Seconds>.

  | Name | Type | Description |
  |------|------| ------------|
  | proxy_id | number | Proxy identifier. Use 0 to ping a Telegram server without a proxy. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1ping_proxy.html).
  """

  defstruct "@type": "pingProxy", "@extra": nil, proxy_id: nil
end
defmodule SearchContacts do
  @moduledoc  """
  Searches for the specified query in the first names, last names and usernames of the known user contacts.
  Returns object_ptr<Users>.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for; may be empty to return all contacts. |
  | limit | number | Maximum number of users to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_contacts.html).
  """

  defstruct "@type": "searchContacts", "@extra": nil, query: nil, limit: nil
end
defmodule EditInlineMessageLiveLocation do
  @moduledoc  """
  Edits the content of a live location in an inline message sent via a bot; for bots only.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_message_id | string | Inline message identifier. |
  | reply_markup | ReplyMarkup | The new message reply markup. |
  | location | location | New location content of the message; may be null. Pass null to stop sharing the live location. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1edit_inline_message_live_location.html).
  """

  defstruct "@type": "editInlineMessageLiveLocation", "@extra": nil, inline_message_id: nil, reply_markup: nil, location: nil
end
defmodule GetImportedContactCount do
  @moduledoc  """
  Returns the total number of imported contacts.
  Returns object_ptr<Count>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_imported_contact_count.html).
  """

  defstruct "@type": "getImportedContactCount", "@extra": nil
end
defmodule CheckDatabaseEncryptionKey do
  @moduledoc  """
  Checks the database encryption key for correctness. Works only when the current authorization state is authorizationStateWaitEncryptionKey.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | encryption_key | string | Encryption key to check or set up. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_database_encryption_key.html).
  """

  defstruct "@type": "checkDatabaseEncryptionKey", "@extra": nil, encryption_key: nil
end
defmodule GenerateChatInviteLink do
  @moduledoc  """
  Generates a new invite link for a chat; the previously generated link is revoked. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right.
  Returns object_ptr<ChatInviteLink>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1generate_chat_invite_link.html).
  """

  defstruct "@type": "generateChatInviteLink", "@extra": nil, chat_id: nil
end
defmodule GetStickerEmojis do
  @moduledoc  """
  Returns emoji corresponding to a sticker. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object.
  Returns object_ptr<Emojis>.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | InputFile | Sticker file identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_sticker_emojis.html).
  """

  defstruct "@type": "getStickerEmojis", "@extra": nil, sticker: nil
end
defmodule SendChatSetTtlMessage do
  @moduledoc  """
  Changes the current TTL setting (sets a new self-destruct timer) in a secret chat and sends the corresponding message.
  Returns object_ptr<Message>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | ttl | number | New TTL value, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1send_chat_set_ttl_message.html).
  """

  defstruct "@type": "sendChatSetTtlMessage", "@extra": nil, chat_id: nil, ttl: nil
end
defmodule SetBackground do
  @moduledoc  """
  Changes the background selected by the user; adds background to the list of installed backgrounds.
  Returns object_ptr<Background>.

  | Name | Type | Description |
  |------|------| ------------|
  | background | InputBackground | The input background to use, null for solid backgrounds. |
  | type | BackgroundType | Background type; null for default background. The method will return error 404 if type is null. |
  | for_dark_theme | bool | True, if the background is chosen for dark theme. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_background.html).
  """

  defstruct "@type": "setBackground", "@extra": nil, background: nil, type: nil, for_dark_theme: nil
end
defmodule SearchChatMessages do
  @moduledoc  """
  Searches for messages with given words in the chat. Returns the results in reverse chronological order, i.e. in order of decreasing message_id. Cannot be used in secret chats with a non-empty query (searchSecretMessages should be used instead), or without an enabled message database. For optimal performance the number of returned messages is chosen by the library.
  Returns object_ptr<Messages>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Identifier of the chat in which to search messages. |
  | query | string | Query to search for. |
  | sender_user_id | number | If not 0, only messages sent by the specified user will be returned. Not supported in secret chats. |
  | from_message_id | string | Identifier of the message starting from which history must be fetched; use 0 to get results from the last message. |
  | offset | number | Specify 0 to get results from exactly the from_message_id or a negative offset to get the specified message and some newer messages. |
  | limit | number | The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached. |
  | filter | SearchMessagesFilter | Filter for message content in the search results. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_chat_messages.html).
  """

  defstruct "@type": "searchChatMessages", "@extra": nil, chat_id: nil, query: nil, sender_user_id: nil, from_message_id: nil, offset: nil, limit: nil, filter: nil
end
defmodule TestGetDifference do
  @moduledoc  """
  Forces an updates.getDifference call to the Telegram servers; for testing only.
  Returns object_ptr<Ok>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_get_difference.html).
  """

  defstruct "@type": "testGetDifference", "@extra": nil
end
defmodule DeleteChatReplyMarkup do
  @moduledoc  """
  Deletes the default reply markup from a chat. Must be called after a one-time keyboard or a ForceReply reply markup has been used. UpdateChatReplyMarkup will be sent if the reply markup will be changed.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | string | Chat identifier. |
  | message_id | string | The message identifier of the used keyboard. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1delete_chat_reply_markup.html).
  """

  defstruct "@type": "deleteChatReplyMarkup", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule RemoveFavoriteSticker do
  @moduledoc  """
  Removes a sticker from the list of favorite stickers.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | InputFile | Sticker file to delete from the list. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remove_favorite_sticker.html).
  """

  defstruct "@type": "removeFavoriteSticker", "@extra": nil, sticker: nil
end
defmodule SetTdlibParameters do
  @moduledoc  """
  Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters.
  Returns object_ptr<Ok>.

  | Name | Type | Description |
  |------|------| ------------|
  | parameters | tdlibParameters | Parameters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1set_tdlib_parameters.html).
  """

  defstruct "@type": "setTdlibParameters", "@extra": nil, parameters: nil
end
defmodule GetUserFullInfo do
  @moduledoc  """
  Returns full information about a user by their identifier.
  Returns object_ptr<UserFullInfo>.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | number | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_user_full_info.html).
  """

  defstruct "@type": "getUserFullInfo", "@extra": nil, user_id: nil
end
defmodule GetCreatedPublicChats do
  @moduledoc  """
  Returns a list of public chats with username created by the user.
  Returns object_ptr<Chats>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_created_public_chats.html).
  """

  defstruct "@type": "getCreatedPublicChats", "@extra": nil
end
defmodule GetSavedOrderInfo do
  @moduledoc  """
  Returns saved order info, if any.
  Returns object_ptr<OrderInfo>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_saved_order_info.html).
  """

  defstruct "@type": "getSavedOrderInfo", "@extra": nil
end
defmodule GetInlineQueryResults do
  @moduledoc  """
  Sends an inline query to a bot and returns its results. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  Returns object_ptr<InlineQueryResults>.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_user_id | number | The identifier of the target bot. |
  | chat_id | string | Identifier of the chat, where the query was sent. |
  | user_location | location | Location of the user, only if needed. |
  | query | string | Text of the query. |
  | offset | string | Offset of the first entry to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_inline_query_results.html).
  """

  defstruct "@type": "getInlineQueryResults", "@extra": nil, bot_user_id: nil, chat_id: nil, user_location: nil, query: nil, offset: nil
end
defmodule GetInviteText do
  @moduledoc  """
  Returns the default text for invitation messages to be used as a placeholder when the current user invites friends to Telegram.
  Returns object_ptr<Text>.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_invite_text.html).
  """

  defstruct "@type": "getInviteText", "@extra": nil
end
defmodule GetRemoteFile do
  @moduledoc  """
  Returns information about a file by its remote ID; this is an offline request. Can be used to register a URL as a file for further uploading, or sending as a message.
  Returns object_ptr<File>.

  | Name | Type | Description |
  |------|------| ------------|
  | remote_file_id | string | Remote identifier of the file to get. |
  | file_type | FileType | File type, if known. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1get_remote_file.html).
  """

  defstruct "@type": "getRemoteFile", "@extra": nil, remote_file_id: nil, file_type: nil
end
end