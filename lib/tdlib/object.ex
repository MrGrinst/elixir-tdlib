defmodule TDLib.Object do
  @moduledoc """
  This module was generated using Telegram's TDLib documentation. It contains
  1154 submodules (= structs).
  """
defmodule UpdateMessageContent do
  @moduledoc  """
  The message content has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_id | int53 | Message identifier. |
  | new_content | MessageContent | New message content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_content.html).
  """

  defstruct "@type": "updateMessageContent", "@extra": nil, chat_id: nil, message_id: nil, new_content: nil
end
defmodule ChatPosition do
  @moduledoc  """
  Describes a position of a chat in a chat list.

  | Name | Type | Description |
  |------|------| ------------|
  | list | ChatList | The chat list. |
  | order | int64 | A parameter used to determine order of the chat in the chat list. Chats must be sorted by the pair (order, chat.id) in descending order. |
  | is_pinned | bool | True, if the chat is pinned in the chat list. |
  | source | ChatSource | Source of the chat in the chat list; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_position.html).
  """

  defstruct "@type": "chatPosition", "@extra": nil, list: nil, order: nil, is_pinned: nil, source: nil
end
defmodule UpdateNewCustomQuery do
  @moduledoc  """
  A new incoming query; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | The query identifier. |
  | data | string | JSON-serialized query data. |
  | timeout | int32 | Query timeout. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_custom_query.html).
  """

  defstruct "@type": "updateNewCustomQuery", "@extra": nil, id: nil, data: nil, timeout: nil
end
defmodule UpdateChatActionBar do
  @moduledoc  """
  The chat action bar was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | action_bar | ChatActionBar | The new value of the action bar; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_action_bar.html).
  """

  defstruct "@type": "updateChatActionBar", "@extra": nil, chat_id: nil, action_bar: nil
end
defmodule DatedFile do
  @moduledoc  """
  File with the date it was uploaded.

  | Name | Type | Description |
  |------|------| ------------|
  | file | file | The file. |
  | date | int32 | Point in time (Unix timestamp) when the file was uploaded. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1dated_file.html).
  """

  defstruct "@type": "datedFile", "@extra": nil, file: nil, date: nil
end
defmodule SessionTypeChrome do
  @moduledoc  """
  The session is running on the Chrome browser.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_chrome.html).
  """

  defstruct "@type": "sessionTypeChrome", "@extra": nil
end
defmodule Message do
  @moduledoc  """
  Describes a message.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int53 | Message identifier; unique for the chat to which the message belongs. |
  | sender_id | MessageSender | Identifier of the sender of the message. |
  | chat_id | int53 | Chat identifier. |
  | sending_state | MessageSendingState | The sending state of the message; may be null. |
  | scheduling_state | MessageSchedulingState | The scheduling state of the message; may be null. |
  | is_outgoing | bool | True, if the message is outgoing. |
  | is_pinned | bool | True, if the message is pinned. |
  | can_be_edited | bool | True, if the message can be edited. For live location and poll messages this fields shows whether <a class="el" href="classtd_1_1td__api_1_1edit_message_live_location.html">editMessageLiveLocation</a> or <a class="el" href="classtd_1_1td__api_1_1stop_poll.html">stopPoll</a> can be used with this message by the application. |
  | can_be_forwarded | bool | True, if the message can be forwarded. |
  | can_be_saved | bool | True, if content of the message can be saved locally or copied. |
  | can_be_deleted_only_for_self | bool | True, if the message can be deleted only for the current user while other users will continue to see it. |
  | can_be_deleted_for_all_users | bool | True, if the message can be deleted for all users. |
  | can_get_added_reactions | bool | True, if the list of added reactions is available through <a class="el" href="classtd_1_1td__api_1_1get_message_added_reactions.html">getMessageAddedReactions</a>. |
  | can_get_statistics | bool | True, if the message statistics are available through <a class="el" href="classtd_1_1td__api_1_1get_message_statistics.html">getMessageStatistics</a>. |
  | can_get_message_thread | bool | True, if information about the message thread is available through <a class="el" href="classtd_1_1td__api_1_1get_message_thread.html">getMessageThread</a>. |
  | can_get_viewers | bool | True, if chat members already viewed the message can be received through <a class="el" href="classtd_1_1td__api_1_1get_message_viewers.html">getMessageViewers</a>. |
  | can_get_media_timestamp_links | bool | True, if media timestamp links can be generated for media timestamp entities in the message text, caption or web page description through <a class="el" href="classtd_1_1td__api_1_1get_message_link.html">getMessageLink</a>. |
  | has_timestamped_media | bool | True, if media timestamp entities refers to a media in this message as opposed to a media in the replied message. |
  | is_channel_post | bool | True, if the message is a channel post. All messages to channels are channel posts, all other messages are not channel posts. |
  | contains_unread_mention | bool | True, if the message contains an unread mention for the current user. |
  | date | int32 | Point in time (Unix timestamp) when the message was sent. |
  | edit_date | int32 | Point in time (Unix timestamp) when the message was last edited. |
  | forward_info | messageForwardInfo | Information about the initial message sender; may be null. |
  | interaction_info | messageInteractionInfo | Information about interactions with the message; may be null. |
  | unread_reactions | unreadReaction | Information about unread reactions added to the message. |
  | reply_in_chat_id | int53 | If non-zero, the identifier of the chat to which the replied message belongs; Currently, only messages in the Replies chat can have different reply_in_chat_id and chat_id. |
  | reply_to_message_id | int53 | If non-zero, the identifier of the message this message is replying to; can be the identifier of a deleted message. |
  | message_thread_id | int53 | If non-zero, the identifier of the message thread the message belongs to; unique within the chat to which the message belongs. |
  | ttl | int32 | For self-destructing messages, the message's TTL (Time To Live), in seconds; 0 if none. TDLib will send <a class="el" href="classtd_1_1td__api_1_1update_delete_messages.html">updateDeleteMessages</a> or <a class="el" href="classtd_1_1td__api_1_1update_message_content.html">updateMessageContent</a> once the TTL expires. |
  | ttl_expires_in | double | Time left before the message expires, in seconds. If the TTL timer isn't started yet, equals to the value of the ttl field. |
  | via_bot_user_id | int53 | If non-zero, the user identifier of the bot through which this message was sent. |
  | author_signature | string | For channel posts and anonymous group messages, optional author signature. |
  | media_album_id | int64 | Unique identifier of an album this message belongs to. Only audios, documents, photos and videos can be grouped together in albums. |
  | restriction_reason | string | If non-empty, contains a human-readable description of the reason why access to this message must be restricted. |
  | content | MessageContent | Content of the message. |
  | reply_markup | ReplyMarkup | Reply markup for the message; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message.html).
  """

  defstruct "@type": "message", "@extra": nil, id: nil, sender_id: nil, chat_id: nil, sending_state: nil, scheduling_state: nil, is_outgoing: nil, is_pinned: nil, can_be_edited: nil, can_be_forwarded: nil, can_be_saved: nil, can_be_deleted_only_for_self: nil, can_be_deleted_for_all_users: nil, can_get_added_reactions: nil, can_get_statistics: nil, can_get_message_thread: nil, can_get_viewers: nil, can_get_media_timestamp_links: nil, has_timestamped_media: nil, is_channel_post: nil, contains_unread_mention: nil, date: nil, edit_date: nil, forward_info: nil, interaction_info: nil, unread_reactions: nil, reply_in_chat_id: nil, reply_to_message_id: nil, message_thread_id: nil, ttl: nil, ttl_expires_in: nil, via_bot_user_id: nil, author_signature: nil, media_album_id: nil, restriction_reason: nil, content: nil, reply_markup: nil
end
defmodule PassportElementTypeInternalPassport do
  @moduledoc  """
  A Telegram Passport element containing the user's internal passport.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_internal_passport.html).
  """

  defstruct "@type": "passportElementTypeInternalPassport", "@extra": nil
end
defmodule SponsoredMessage do
  @moduledoc  """
  Describes a sponsored message.

  | Name | Type | Description |
  |------|------| ------------|
  | message_id | int53 | Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages. |
  | is_recommended | bool | True, if the message needs to be labeled as "recommended" instead of "sponsored". |
  | sponsor_chat_id | int53 | Sponsor chat identifier; 0 if the sponsor chat is accessible through an invite link. |
  | sponsor_chat_info | chatInviteLinkInfo | Information about the sponsor chat; may be null unless sponsor_chat_id == 0. |
  | link | InternalLinkType | An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead. |
  | content | MessageContent | Content of the message. Currently, can be only of the type <a class="el" href="classtd_1_1td__api_1_1message_text.html">messageText</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sponsored_message.html).
  """

  defstruct "@type": "sponsoredMessage", "@extra": nil, message_id: nil, is_recommended: nil, sponsor_chat_id: nil, sponsor_chat_info: nil, link: nil, content: nil
end
defmodule CallProblemDistortedSpeech do
  @moduledoc  """
  The speech was distorted.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_distorted_speech.html).
  """

  defstruct "@type": "callProblemDistortedSpeech", "@extra": nil
end
defmodule StickerTypeVideo do
  @moduledoc  """
  The sticker is a video in WEBM format.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_type_video.html).
  """

  defstruct "@type": "stickerTypeVideo", "@extra": nil
end
defmodule InputPassportElementIdentityCard do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's identity card.

  | Name | Type | Description |
  |------|------| ------------|
  | identity_card | inputIdentityDocument | The identity card to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_identity_card.html).
  """

  defstruct "@type": "inputPassportElementIdentityCard", "@extra": nil, identity_card: nil
end
defmodule RichTextUnderline do
  @moduledoc  """
  An underlined rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_underline.html).
  """

  defstruct "@type": "richTextUnderline", "@extra": nil, text: nil
end
defmodule Game do
  @moduledoc  """
  Describes a game.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Game ID. |
  | short_name | string | Game short name. To share a game use the URL <a href="https://t.me/{bot_username}?game={game_short_name}">https://t.me/{bot_username}?game={game_short_name}</a>. |
  | title | string | Game title. |
  | text | formattedText | Game text, usually containing scoreboards for a game. |
  | description | string | Game description. |
  | photo | photo | Game photo. |
  | animation | animation | Game animation; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1game.html).
  """

  defstruct "@type": "game", "@extra": nil, id: nil, short_name: nil, title: nil, text: nil, description: nil, photo: nil, animation: nil
end
defmodule ChatReportReasonViolence do
  @moduledoc  """
  The chat promotes violence.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_violence.html).
  """

  defstruct "@type": "chatReportReasonViolence", "@extra": nil
end
defmodule StorageStatisticsFast do
  @moduledoc  """
  Contains approximate storage usage statistics, excluding files of unknown file type.

  | Name | Type | Description |
  |------|------| ------------|
  | files_size | int53 | Approximate total size of files, in bytes. |
  | file_count | int32 | Approximate number of files. |
  | database_size | int53 | Size of the database. |
  | language_pack_database_size | int53 | Size of the language pack database. |
  | log_size | int53 | Size of the TDLib internal log. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics_fast.html).
  """

  defstruct "@type": "storageStatisticsFast", "@extra": nil, files_size: nil, file_count: nil, database_size: nil, language_pack_database_size: nil, log_size: nil
end
defmodule ChatMemberStatusMember do
  @moduledoc  """
  The user is a member of the chat, without any additional privileges or restrictions.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_member.html).
  """

  defstruct "@type": "chatMemberStatusMember", "@extra": nil
end
defmodule UpdateLanguagePackStrings do
  @moduledoc  """
  Some language pack strings have been updated.

  | Name | Type | Description |
  |------|------| ------------|
  | localization_target | string | Localization target to which the language pack belongs. |
  | language_pack_id | string | Identifier of the updated language pack. |
  | strings | languagePackString | List of changed language pack strings. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_language_pack_strings.html).
  """

  defstruct "@type": "updateLanguagePackStrings", "@extra": nil, localization_target: nil, language_pack_id: nil, strings: nil
end
defmodule InternalLinkTypeBackground do
  @moduledoc  """
  The link is a link to a background. Call searchBackground with the given background name to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | background_name | string | Name of the background. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_background.html).
  """

  defstruct "@type": "internalLinkTypeBackground", "@extra": nil, background_name: nil
end
defmodule PassportElementErrorSourceFile do
  @moduledoc  """
  The file contains an error. The error will be considered resolved when the file changes.

  | Name | Type | Description |
  |------|------| ------------|
  | file_index | int32 | Index of a file with the error. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_file.html).
  """

  defstruct "@type": "passportElementErrorSourceFile", "@extra": nil, file_index: nil
end
defmodule PremiumFeatureAppIcons do
  @moduledoc  """
  Allowed to set a premium appllication icons.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_app_icons.html).
  """

  defstruct "@type": "premiumFeatureAppIcons", "@extra": nil
end
defmodule InternalLinkTypeChatInvite do
  @moduledoc  """
  The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | invite_link | string | Internal representation of the invite link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_chat_invite.html).
  """

  defstruct "@type": "internalLinkTypeChatInvite", "@extra": nil, invite_link: nil
end
defmodule ChatType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_type.html).
  """

  defstruct "@type": "ChatType", "@extra": nil
end
defmodule ChatActionWatchingAnimations do
  @moduledoc  """
  The user is watching animations sent by the other party by clicking on an animated emoji.

  | Name | Type | Description |
  |------|------| ------------|
  | emoji | string | The animated emoji. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_watching_animations.html).
  """

  defstruct "@type": "chatActionWatchingAnimations", "@extra": nil, emoji: nil
end
defmodule PageBlockPullQuote do
  @moduledoc  """
  A pull quote.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Quote text. |
  | credit | RichText | Quote credit. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_pull_quote.html).
  """

  defstruct "@type": "pageBlockPullQuote", "@extra": nil, text: nil, credit: nil
end
defmodule UpdateCall do
  @moduledoc  """
  New call was created or information about a call was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | call | call | New data about a call. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_call.html).
  """

  defstruct "@type": "updateCall", "@extra": nil, call: nil
end
defmodule PushMessageContentHidden do
  @moduledoc  """
  A general message with hidden content.

  | Name | Type | Description |
  |------|------| ------------|
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_hidden.html).
  """

  defstruct "@type": "pushMessageContentHidden", "@extra": nil, is_pinned: nil
end
defmodule InputPassportElementAddress do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's address.

  | Name | Type | Description |
  |------|------| ------------|
  | address | address | The address to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_address.html).
  """

  defstruct "@type": "inputPassportElementAddress", "@extra": nil, address: nil
end
defmodule Minithumbnail do
  @moduledoc  """
  Thumbnail image of a very poor quality and low resolution.

  | Name | Type | Description |
  |------|------| ------------|
  | width | int32 | Thumbnail width, usually doesn't exceed 40. |
  | height | int32 | Thumbnail height, usually doesn't exceed 40. |
  | data | bytes | The thumbnail in JPEG format. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1minithumbnail.html).
  """

  defstruct "@type": "minithumbnail", "@extra": nil, width: nil, height: nil, data: nil
end
defmodule UpdateNewCallbackQuery do
  @moduledoc  """
  A new incoming callback query; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Unique query identifier. |
  | sender_user_id | int53 | Identifier of the user who sent the query. |
  | chat_id | int53 | Identifier of the chat where the query was sent. |
  | message_id | int53 | Identifier of the message from which the query originated. |
  | chat_instance | int64 | Identifier that uniquely corresponds to the chat to which the message was sent. |
  | payload | CallbackQueryPayload | Query payload. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_callback_query.html).
  """

  defstruct "@type": "updateNewCallbackQuery", "@extra": nil, id: nil, sender_user_id: nil, chat_id: nil, message_id: nil, chat_instance: nil, payload: nil
end
defmodule BackgroundFillSolid do
  @moduledoc  """
  Describes a solid fill of a background.

  | Name | Type | Description |
  |------|------| ------------|
  | color | int32 | A color of the background in the RGB24 format. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_fill_solid.html).
  """

  defstruct "@type": "backgroundFillSolid", "@extra": nil, color: nil
end
defmodule Seconds do
  @moduledoc  """
  Contains a value representing a number of seconds.

  | Name | Type | Description |
  |------|------| ------------|
  | seconds | double | Number of seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1seconds.html).
  """

  defstruct "@type": "seconds", "@extra": nil, seconds: nil
end
defmodule DeviceTokenSimplePush do
  @moduledoc  """
  A token for Simple Push API for Firefox OS.

  | Name | Type | Description |
  |------|------| ------------|
  | endpoint | string | Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_simple_push.html).
  """

  defstruct "@type": "deviceTokenSimplePush", "@extra": nil, endpoint: nil
end
defmodule AvailableReactions do
  @moduledoc  """
  Represents a list of available reactions.

  | Name | Type | Description |
  |------|------| ------------|
  | reactions | availableReaction | List of reactions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1available_reactions.html).
  """

  defstruct "@type": "availableReactions", "@extra": nil, reactions: nil
end
defmodule ChatEventMemberInvited do
  @moduledoc  """
  A new chat member was invited.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | New member user identifier. |
  | status | ChatMemberStatus | New member status. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_invited.html).
  """

  defstruct "@type": "chatEventMemberInvited", "@extra": nil, user_id: nil, status: nil
end
defmodule AutoDownloadSettingsPresets do
  @moduledoc  """
  Contains auto-download settings presets for the current user.

  | Name | Type | Description |
  |------|------| ------------|
  | low | autoDownloadSettings | Preset with lowest settings; supposed to be used by default when roaming. |
  | medium | autoDownloadSettings | Preset with medium settings; supposed to be used by default when using mobile data. |
  | high | autoDownloadSettings | Preset with highest settings; supposed to be used by default when connected on Wi-Fi. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1auto_download_settings_presets.html).
  """

  defstruct "@type": "autoDownloadSettingsPresets", "@extra": nil, low: nil, medium: nil, high: nil
end
defmodule TestVectorString do
  @moduledoc  """
  A simple object containing a vector of strings; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | string | Vector of strings. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_string.html).
  """

  defstruct "@type": "testVectorString", "@extra": nil, value: nil
end
defmodule TopChatCategoryChannels do
  @moduledoc  """
  A category containing frequently used channels.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_channels.html).
  """

  defstruct "@type": "topChatCategoryChannels", "@extra": nil
end
defmodule ClosedVectorPath do
  @moduledoc  """
  Represents a closed vector path. The path begins at the end point of the last command.

  | Name | Type | Description |
  |------|------| ------------|
  | commands | VectorPathCommand | List of vector path commands. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1closed_vector_path.html).
  """

  defstruct "@type": "closedVectorPath", "@extra": nil, commands: nil
end
defmodule PageBlockVerticalAlignmentBottom do
  @moduledoc  """
  The content must be bottom-aligned.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_vertical_alignment_bottom.html).
  """

  defstruct "@type": "pageBlockVerticalAlignmentBottom", "@extra": nil
end
defmodule UserStatusOnline do
  @moduledoc  """
  The user is online.

  | Name | Type | Description |
  |------|------| ------------|
  | expires | int32 | Point in time (Unix timestamp) when the user's online status will expire. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_online.html).
  """

  defstruct "@type": "userStatusOnline", "@extra": nil, expires: nil
end
defmodule MessageFileType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_file_type.html).
  """

  defstruct "@type": "MessageFileType", "@extra": nil
end
defmodule TextEntityTypeBankCardNumber do
  @moduledoc  """
  A bank card number. The getBankCardInfo method can be used to get information about the bank card.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_bank_card_number.html).
  """

  defstruct "@type": "textEntityTypeBankCardNumber", "@extra": nil
end
defmodule ChatTypeSupergroup do
  @moduledoc  """
  A supergroup or channel (with unlimited members).

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | int53 | Supergroup or channel identifier. |
  | is_channel | bool | True, if the supergroup is a channel. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_supergroup.html).
  """

  defstruct "@type": "chatTypeSupergroup", "@extra": nil, supergroup_id: nil, is_channel: nil
end
defmodule MessageAnimatedEmoji do
  @moduledoc  """
  A message with an animated emoji.

  | Name | Type | Description |
  |------|------| ------------|
  | animated_emoji | animatedEmoji | The animated emoji. |
  | emoji | string | The corresponding emoji. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_animated_emoji.html).
  """

  defstruct "@type": "messageAnimatedEmoji", "@extra": nil, animated_emoji: nil, emoji: nil
end
defmodule WebAppInfo do
  @moduledoc  """
  Contains information about a Web App.

  | Name | Type | Description |
  |------|------| ------------|
  | launch_id | int64 | Unique identifier for the Web App launch. |
  | url | string | A Web App URL to open in a web view. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1web_app_info.html).
  """

  defstruct "@type": "webAppInfo", "@extra": nil, launch_id: nil, url: nil
end
defmodule TopChatCategoryGroups do
  @moduledoc  """
  A category containing frequently used basic groups and supergroups.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_groups.html).
  """

  defstruct "@type": "topChatCategoryGroups", "@extra": nil
end
defmodule MessageExpiredVideo do
  @moduledoc  """
  An expired video message (self-destructed after TTL has elapsed).


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_expired_video.html).
  """

  defstruct "@type": "messageExpiredVideo", "@extra": nil
end
defmodule TargetChatCurrent do
  @moduledoc  """
  The currently opened chat needs to be kept.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1target_chat_current.html).
  """

  defstruct "@type": "targetChatCurrent", "@extra": nil
end
defmodule InputInlineQueryResultDocument do
  @moduledoc  """
  Represents a link to a file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the resulting file. |
  | description | string | Short description of the result, if known. |
  | document_url | string | URL of the file. |
  | mime_type | string | MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed. |
  | thumbnail_url | string | The URL of the file thumbnail, if it exists. |
  | thumbnail_width | int32 | Width of the thumbnail. |
  | thumbnail_height | int32 | Height of the thumbnail. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_document.html">inputMessageDocument</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_document.html).
  """

  defstruct "@type": "inputInlineQueryResultDocument", "@extra": nil, id: nil, title: nil, description: nil, document_url: nil, mime_type: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule SecretChatStateClosed do
  @moduledoc  """
  The secret chat is closed.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat_state_closed.html).
  """

  defstruct "@type": "secretChatStateClosed", "@extra": nil
end
defmodule ResetPasswordResultPending do
  @moduledoc  """
  The password reset request is pending.

  | Name | Type | Description |
  |------|------| ------------|
  | pending_reset_date | int32 | Point in time (Unix timestamp) after which the password can be reset immediately using <a class="el" href="classtd_1_1td__api_1_1reset_password.html">resetPassword</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reset_password_result_pending.html).
  """

  defstruct "@type": "resetPasswordResultPending", "@extra": nil, pending_reset_date: nil
end
defmodule TargetChatChosen do
  @moduledoc  """
  The chat needs to be chosen by the user among chats of the specified types.

  | Name | Type | Description |
  |------|------| ------------|
  | allow_user_chats | bool | True, if private chats with ordinary users are allowed. |
  | allow_bot_chats | bool | True, if private chats with other bots are allowed. |
  | allow_group_chats | bool | True, if basic group and supergroup chats are allowed. |
  | allow_channel_chats | bool | True, if channel chats are allowed. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1target_chat_chosen.html).
  """

  defstruct "@type": "targetChatChosen", "@extra": nil, allow_user_chats: nil, allow_bot_chats: nil, allow_group_chats: nil, allow_channel_chats: nil
end
defmodule PageBlockTable do
  @moduledoc  """
  A table.

  | Name | Type | Description |
  |------|------| ------------|
  | caption | RichText | Table caption. |
  | cells | pageBlockTableCell | Table cells. |
  | is_bordered | bool | True, if the table is bordered. |
  | is_striped | bool | True, if the table is striped. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_table.html).
  """

  defstruct "@type": "pageBlockTable", "@extra": nil, caption: nil, cells: nil, is_bordered: nil, is_striped: nil
end
defmodule UpdateUnreadMessageCount do
  @moduledoc  """
  Number of unread messages in a chat list has changed. This update is sent only if the message database is used.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_list | ChatList | The chat list with changed number of unread messages. |
  | unread_count | int32 | Total number of unread messages. |
  | unread_unmuted_count | int32 | Total number of unread messages in unmuted chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_unread_message_count.html).
  """

  defstruct "@type": "updateUnreadMessageCount", "@extra": nil, chat_list: nil, unread_count: nil, unread_unmuted_count: nil
end
defmodule TextEntityTypeBold do
  @moduledoc  """
  A bold text.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_bold.html).
  """

  defstruct "@type": "textEntityTypeBold", "@extra": nil
end
defmodule Document do
  @moduledoc  """
  Describes a document of any type.

  | Name | Type | Description |
  |------|------| ------------|
  | file_name | string | Original name of the file; as defined by the sender. |
  | mime_type | string | MIME type of the file; as defined by the sender. |
  | minithumbnail | minithumbnail | Document minithumbnail; may be null. |
  | thumbnail | thumbnail | Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null. |
  | document | file | File containing the document. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1document.html).
  """

  defstruct "@type": "document", "@extra": nil, file_name: nil, mime_type: nil, minithumbnail: nil, thumbnail: nil, document: nil
end
defmodule InputInlineQueryResultAudio do
  @moduledoc  """
  Represents a link to an MP3 audio file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the audio file. |
  | performer | string | Performer of the audio file. |
  | audio_url | string | The URL of the audio file. |
  | audio_duration | int32 | Audio file duration, in seconds. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_audio.html">inputMessageAudio</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_audio.html).
  """

  defstruct "@type": "inputInlineQueryResultAudio", "@extra": nil, id: nil, title: nil, performer: nil, audio_url: nil, audio_duration: nil, reply_markup: nil, input_message_content: nil
end
defmodule UpdateNotificationGroup do
  @moduledoc  """
  A list of active notifications in a notification group has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | notification_group_id | int32 | Unique notification group identifier. |
  | type | NotificationGroupType | New type of the notification group. |
  | chat_id | int53 | Identifier of a chat to which all notifications in the group belong. |
  | notification_settings_chat_id | int53 | Chat identifier, which notification settings must be applied to the added notifications. |
  | notification_sound_id | int64 | Identifier of the notification sound to be played; 0 if sound is disabled. |
  | total_count | int32 | Total number of unread notifications in the group, can be bigger than number of active notifications. |
  | added_notifications | notification | List of added group notifications, sorted by notification ID. |
  | removed_notification_ids | int32 | Identifiers of removed group notifications, sorted by notification ID. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_notification_group.html).
  """

  defstruct "@type": "updateNotificationGroup", "@extra": nil, notification_group_id: nil, type: nil, chat_id: nil, notification_settings_chat_id: nil, notification_sound_id: nil, total_count: nil, added_notifications: nil, removed_notification_ids: nil
end
defmodule DatabaseStatistics do
  @moduledoc  """
  Contains database statistics.

  | Name | Type | Description |
  |------|------| ------------|
  | statistics | string | Database statistics in an unspecified human-readable format. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1database_statistics.html).
  """

  defstruct "@type": "databaseStatistics", "@extra": nil, statistics: nil
end
defmodule PageBlockVerticalAlignment do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_page_block_vertical_alignment.html).
  """

  defstruct "@type": "PageBlockVerticalAlignment", "@extra": nil
end
defmodule ReplyMarkupShowKeyboard do
  @moduledoc  """
  Contains a custom keyboard layout to quickly reply to bots.

  | Name | Type | Description |
  |------|------| ------------|
  | rows | keyboardButton | A list of rows of bot keyboard buttons. |
  | resize_keyboard | bool | True, if the application needs to resize the keyboard vertically. |
  | one_time | bool | True, if the application needs to hide the keyboard after use. |
  | is_personal | bool | True, if the keyboard must automatically be shown to the current user. For outgoing messages, specify true to show the keyboard only for the mentioned users and for the target user of a reply. |
  | input_field_placeholder | string | If non-empty, the placeholder to be shown in the input field when the keyboard is active; 0-64 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_show_keyboard.html).
  """

  defstruct "@type": "replyMarkupShowKeyboard", "@extra": nil, rows: nil, resize_keyboard: nil, one_time: nil, is_personal: nil, input_field_placeholder: nil
end
defmodule ChatInviteLinkInfo do
  @moduledoc  """
  Contains information about a chat invite link.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier of the invite link; 0 if the user has no access to the chat before joining. |
  | accessible_for | int32 | If non-zero, the amount of time for which read access to the chat will remain available, in seconds. |
  | type | ChatType | Type of the chat. |
  | title | string | Title of the chat. |
  | photo | chatPhotoInfo | Chat photo; may be null. |
  | description | string | Chat description. |
  | member_count | int32 | Number of members in the chat. |
  | member_user_ids | int53 | User identifiers of some chat members that may be known to the current user. |
  | creates_join_request | bool | True, if the link only creates join request. |
  | is_public | bool | True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_info.html).
  """

  defstruct "@type": "chatInviteLinkInfo", "@extra": nil, chat_id: nil, accessible_for: nil, type: nil, title: nil, photo: nil, description: nil, member_count: nil, member_user_ids: nil, creates_join_request: nil, is_public: nil
end
defmodule UserStatusEmpty do
  @moduledoc  """
  The user status was never changed.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_empty.html).
  """

  defstruct "@type": "userStatusEmpty", "@extra": nil
end
defmodule TextEntityTypeItalic do
  @moduledoc  """
  An italic text.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_italic.html).
  """

  defstruct "@type": "textEntityTypeItalic", "@extra": nil
end
defmodule StorageStatistics do
  @moduledoc  """
  Contains the exact storage usage statistics split by chats and file type.

  | Name | Type | Description |
  |------|------| ------------|
  | size | int53 | Total size of files, in bytes. |
  | count | int32 | Total number of files. |
  | by_chat | storageStatisticsByChat | Statistics split by chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics.html).
  """

  defstruct "@type": "storageStatistics", "@extra": nil, size: nil, count: nil, by_chat: nil
end
defmodule RichTexts do
  @moduledoc  """
  A concatenation of rich texts.

  | Name | Type | Description |
  |------|------| ------------|
  | texts | RichText | Texts. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_texts.html).
  """

  defstruct "@type": "richTexts", "@extra": nil, texts: nil
end
defmodule InputPassportElementPhoneNumber do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's phone number.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number | string | The phone number to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_phone_number.html).
  """

  defstruct "@type": "inputPassportElementPhoneNumber", "@extra": nil, phone_number: nil
end
defmodule ChatEventUsernameChanged do
  @moduledoc  """
  The chat username was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_username | string | Previous chat username. |
  | new_username | string | New chat username. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_username_changed.html).
  """

  defstruct "@type": "chatEventUsernameChanged", "@extra": nil, old_username: nil, new_username: nil
end
defmodule ConnectionStateConnecting do
  @moduledoc  """
  Currently establishing a connection to the Telegram servers.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_connecting.html).
  """

  defstruct "@type": "connectionStateConnecting", "@extra": nil
end
defmodule SessionTypeSafari do
  @moduledoc  """
  The session is running on the Safari browser.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_safari.html).
  """

  defstruct "@type": "sessionTypeSafari", "@extra": nil
end
defmodule ChatEventSignMessagesToggled do
  @moduledoc  """
  The sign_messages setting of a channel was toggled.

  | Name | Type | Description |
  |------|------| ------------|
  | sign_messages | bool | New value of sign_messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_sign_messages_toggled.html).
  """

  defstruct "@type": "chatEventSignMessagesToggled", "@extra": nil, sign_messages: nil
end
defmodule InputInlineQueryResultVoiceNote do
  @moduledoc  """
  Represents a link to an opus-encoded audio file within an OGG container, single channel audio.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the voice note. |
  | voice_note_url | string | The URL of the voice note file. |
  | voice_note_duration | int32 | Duration of the voice note, in seconds. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_voice_note.html">inputMessageVoiceNote</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_voice_note.html).
  """

  defstruct "@type": "inputInlineQueryResultVoiceNote", "@extra": nil, id: nil, title: nil, voice_note_url: nil, voice_note_duration: nil, reply_markup: nil, input_message_content: nil
end
defmodule UpdateChatIsBlocked do
  @moduledoc  """
  A chat was blocked or unblocked.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | is_blocked | bool | New value of is_blocked. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_is_blocked.html).
  """

  defstruct "@type": "updateChatIsBlocked", "@extra": nil, chat_id: nil, is_blocked: nil
end
defmodule CountryInfo do
  @moduledoc  """
  Contains information about a country.

  | Name | Type | Description |
  |------|------| ------------|
  | country_code | string | A two-letter ISO 3166-1 alpha-2 country code. |
  | name | string | Native name of the country. |
  | english_name | string | English name of the country. |
  | is_hidden | bool | True, if the country must be hidden from the list of all countries. |
  | calling_codes | string | List of country calling codes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1country_info.html).
  """

  defstruct "@type": "countryInfo", "@extra": nil, country_code: nil, name: nil, english_name: nil, is_hidden: nil, calling_codes: nil
end
defmodule TextEntities do
  @moduledoc  """
  Contains a list of text entities.

  | Name | Type | Description |
  |------|------| ------------|
  | entities | textEntity | List of text entities. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entities.html).
  """

  defstruct "@type": "textEntities", "@extra": nil, entities: nil
end
defmodule ChatFilter do
  @moduledoc  """
  Represents a filter of user chats.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | The title of the filter; 1-12 characters without line feeds. |
  | icon_name | string | The chosen icon name for short filter representation. If non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette". If empty, use <a class="el" href="classtd_1_1td__api_1_1get_chat_filter_default_icon_name.html">getChatFilterDefaultIconName</a> to get default icon name for the filter. |
  | pinned_chat_ids | int53 | The chat identifiers of pinned chats in the filtered chat list. There can be up to GetOption("chat_filter_chosen_chat_count_max") pinned and always included non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium. |
  | included_chat_ids | int53 | The chat identifiers of always included chats in the filtered chat list. There can be up to GetOption("chat_filter_chosen_chat_count_max") pinned and always included non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium. |
  | excluded_chat_ids | int53 | The chat identifiers of always excluded chats in the filtered chat list. There can be up to GetOption("chat_filter_chosen_chat_count_max") always excluded non-secret chats and the same number of secret chats, but the limit can be increased with Telegram Premium. |
  | exclude_muted | bool | True, if muted chats need to be excluded. |
  | exclude_read | bool | True, if read chats need to be excluded. |
  | exclude_archived | bool | True, if archived chats need to be excluded. |
  | include_contacts | bool | True, if contacts need to be included. |
  | include_non_contacts | bool | True, if non-contact users need to be included. |
  | include_bots | bool | True, if bots need to be included. |
  | include_groups | bool | True, if basic groups and supergroups need to be included. |
  | include_channels | bool | True, if channels need to be included. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_filter.html).
  """

  defstruct "@type": "chatFilter", "@extra": nil, title: nil, icon_name: nil, pinned_chat_ids: nil, included_chat_ids: nil, excluded_chat_ids: nil, exclude_muted: nil, exclude_read: nil, exclude_archived: nil, include_contacts: nil, include_non_contacts: nil, include_bots: nil, include_groups: nil, include_channels: nil
end
defmodule SupergroupMembersFilterBots do
  @moduledoc  """
  Returns bot members of the supergroup or channel.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_bots.html).
  """

  defstruct "@type": "supergroupMembersFilterBots", "@extra": nil
end
defmodule PassportElementTemporaryRegistration do
  @moduledoc  """
  A Telegram Passport element containing the user's temporary registration.

  | Name | Type | Description |
  |------|------| ------------|
  | temporary_registration | personalDocument | Temporary registration. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_temporary_registration.html).
  """

  defstruct "@type": "passportElementTemporaryRegistration", "@extra": nil, temporary_registration: nil
end
defmodule ChatMembersFilterMembers do
  @moduledoc  """
  Returns all chat members, including restricted chat members.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_members.html).
  """

  defstruct "@type": "chatMembersFilterMembers", "@extra": nil
end
defmodule SearchMessagesFilterDocument do
  @moduledoc  """
  Returns only document messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_document.html).
  """

  defstruct "@type": "searchMessagesFilterDocument", "@extra": nil
end
defmodule PassportElementPersonalDetails do
  @moduledoc  """
  A Telegram Passport element containing the user's personal details.

  | Name | Type | Description |
  |------|------| ------------|
  | personal_details | personalDetails | Personal details of the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_personal_details.html).
  """

  defstruct "@type": "passportElementPersonalDetails", "@extra": nil, personal_details: nil
end
defmodule ChatActionBarJoinRequest do
  @moduledoc  """
  The chat is a private chat with an administrator of a chat to which the user sent join request.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the chat to which the join request was sent. |
  | is_channel | bool | True, if the join request was sent to a channel chat. |
  | request_date | int32 | Point in time (Unix timestamp) when the join request was sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_join_request.html).
  """

  defstruct "@type": "chatActionBarJoinRequest", "@extra": nil, title: nil, is_channel: nil, request_date: nil
end
defmodule RecommendedChatFilter do
  @moduledoc  """
  Describes a recommended chat filter.

  | Name | Type | Description |
  |------|------| ------------|
  | filter | chatFilter | The chat filter. |
  | description | string | Chat filter description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recommended_chat_filter.html).
  """

  defstruct "@type": "recommendedChatFilter", "@extra": nil, filter: nil, description: nil
end
defmodule ChatInviteLinkMember do
  @moduledoc  """
  Describes a chat member joined a chat via an invite link.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier. |
  | joined_chat_date | int32 | Point in time (Unix timestamp) when the user joined the chat. |
  | approver_user_id | int53 | User identifier of the chat administrator, approved user join request. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_member.html).
  """

  defstruct "@type": "chatInviteLinkMember", "@extra": nil, user_id: nil, joined_chat_date: nil, approver_user_id: nil
end
defmodule UpdateChatLastMessage do
  @moduledoc  """
  The last message of a chat was changed. If last_message is null, then the last message in the chat became unknown. Some new unknown messages might be added to the chat in this case.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | last_message | message | The new last message in the chat; may be null. |
  | positions | chatPosition | The new chat positions in the chat lists. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_last_message.html).
  """

  defstruct "@type": "updateChatLastMessage", "@extra": nil, chat_id: nil, last_message: nil, positions: nil
end
defmodule GroupCallVideoQualityFull do
  @moduledoc  """
  The best available video quality.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_video_quality_full.html).
  """

  defstruct "@type": "groupCallVideoQualityFull", "@extra": nil
end
defmodule WebPage do
  @moduledoc  """
  Describes a web page preview.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | Original URL of the link. |
  | display_url | string | URL to display. |
  | type | string | Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else. |
  | site_name | string | Short name of the site (e.g., Google Docs, App Store). |
  | title | string | Title of the content. |
  | description | formattedText | Description of the content. |
  | photo | photo | Image representing the content; may be null. |
  | embed_url | string | URL to show in the embedded preview. |
  | embed_type | string | MIME type of the embedded preview, (e.g., text/html or video/mp4). |
  | embed_width | int32 | Width of the embedded preview. |
  | embed_height | int32 | Height of the embedded preview. |
  | duration | int32 | Duration of the content, in seconds. |
  | author | string | Author of the content. |
  | animation | animation | Preview of the content as an animation, if available; may be null. |
  | audio | audio | Preview of the content as an audio file, if available; may be null. |
  | document | document | Preview of the content as a document, if available; may be null. |
  | sticker | sticker | Preview of the content as a sticker for small WEBP files, if available; may be null. |
  | video | video | Preview of the content as a video, if available; may be null. |
  | video_note | videoNote | Preview of the content as a video note, if available; may be null. |
  | voice_note | voiceNote | Preview of the content as a voice note, if available; may be null. |
  | instant_view_version | int32 | Version of instant view, available for the web page (currently, can be 1 or 2), 0 if none. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1web_page.html).
  """

  defstruct "@type": "webPage", "@extra": nil, url: nil, display_url: nil, type: nil, site_name: nil, title: nil, description: nil, photo: nil, embed_url: nil, embed_type: nil, embed_width: nil, embed_height: nil, duration: nil, author: nil, animation: nil, audio: nil, document: nil, sticker: nil, video: nil, video_note: nil, voice_note: nil, instant_view_version: nil
end
defmodule UpdateMessageSendAcknowledged do
  @moduledoc  """
  A request to send a message has reached the Telegram server. This doesn't mean that the message will be sent successfully or even that the send message request will be processed. This update will be sent only if the option "use_quick_ack" is set to true. This update may be sent multiple times for the same message.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | The chat identifier of the sent message. |
  | message_id | int53 | A temporary message identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_send_acknowledged.html).
  """

  defstruct "@type": "updateMessageSendAcknowledged", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule AuthorizationStateWaitRegistration do
  @moduledoc  """
  The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration.

  | Name | Type | Description |
  |------|------| ------------|
  | terms_of_service | termsOfService | Telegram terms of service. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_registration.html).
  """

  defstruct "@type": "authorizationStateWaitRegistration", "@extra": nil, terms_of_service: nil
end
defmodule EncryptedPassportElement do
  @moduledoc  """
  Contains information about an encrypted Telegram Passport element; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | type | PassportElementType | Type of Telegram Passport element. |
  | data | bytes | Encrypted JSON-encoded data about the user. |
  | front_side | datedFile | The front side of an identity document. |
  | reverse_side | datedFile | The reverse side of an identity document; may be null. |
  | selfie | datedFile | Selfie with the document; may be null. |
  | translation | datedFile | List of files containing a certified English translation of the document. |
  | files | datedFile | List of attached files. |
  | value | string | Unencrypted data, phone number or email address. |
  | hash | string | Hash of the entire element. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1encrypted_passport_element.html).
  """

  defstruct "@type": "encryptedPassportElement", "@extra": nil, type: nil, data: nil, front_side: nil, reverse_side: nil, selfie: nil, translation: nil, files: nil, value: nil, hash: nil
end
defmodule PersonalDetails do
  @moduledoc  """
  Contains the user's personal details.

  | Name | Type | Description |
  |------|------| ------------|
  | first_name | string | First name of the user written in English; 1-255 characters. |
  | middle_name | string | Middle name of the user written in English; 0-255 characters. |
  | last_name | string | Last name of the user written in English; 1-255 characters. |
  | native_first_name | string | Native first name of the user; 1-255 characters. |
  | native_middle_name | string | Native middle name of the user; 0-255 characters. |
  | native_last_name | string | Native last name of the user; 1-255 characters. |
  | birthdate | date | Birthdate of the user. |
  | gender | string | Gender of the user, "male" or "female". |
  | country_code | string | A two-letter ISO 3166-1 alpha-2 country code of the user's country. |
  | residence_country_code | string | A two-letter ISO 3166-1 alpha-2 country code of the user's residence country. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1personal_details.html).
  """

  defstruct "@type": "personalDetails", "@extra": nil, first_name: nil, middle_name: nil, last_name: nil, native_first_name: nil, native_middle_name: nil, native_last_name: nil, birthdate: nil, gender: nil, country_code: nil, residence_country_code: nil
end
defmodule ChatReportReasonCopyright do
  @moduledoc  """
  The chat contains copyrighted content.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_copyright.html).
  """

  defstruct "@type": "chatReportReasonCopyright", "@extra": nil
end
defmodule UpdateChatMessageTtl do
  @moduledoc  """
  The message Time To Live setting for a chat was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_ttl | int32 | New value of message_ttl. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_message_ttl.html).
  """

  defstruct "@type": "updateChatMessageTtl", "@extra": nil, chat_id: nil, message_ttl: nil
end
defmodule ChatMember do
  @moduledoc  """
  Describes a user or a chat as a member of another chat.

  | Name | Type | Description |
  |------|------| ------------|
  | member_id | MessageSender | Identifier of the chat member. Currently, other chats can be only Left or Banned. Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups or channels. |
  | inviter_user_id | int53 | Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown. |
  | joined_chat_date | int32 | Point in time (Unix timestamp) when the user joined the chat. |
  | status | ChatMemberStatus | Status of the member in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member.html).
  """

  defstruct "@type": "chatMember", "@extra": nil, member_id: nil, inviter_user_id: nil, joined_chat_date: nil, status: nil
end
defmodule TextEntityTypeCashtag do
  @moduledoc  """
  A cashtag text, beginning with "$" and consisting of capital English letters (e.g., "$USD").


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_cashtag.html).
  """

  defstruct "@type": "textEntityTypeCashtag", "@extra": nil
end
defmodule InputPassportElementErrorSourceFrontSide do
  @moduledoc  """
  The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes.

  | Name | Type | Description |
  |------|------| ------------|
  | file_hash | bytes | Current hash of the file containing the front side. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_front_side.html).
  """

  defstruct "@type": "inputPassportElementErrorSourceFrontSide", "@extra": nil, file_hash: nil
end
defmodule BotCommands do
  @moduledoc  """
  Contains a list of bot commands.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_user_id | int53 | Bot's user identifier. |
  | commands | botCommand | List of bot commands. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_commands.html).
  """

  defstruct "@type": "botCommands", "@extra": nil, bot_user_id: nil, commands: nil
end
defmodule OptionValueInteger do
  @moduledoc  """
  Represents an integer option.

  | Name | Type | Description |
  |------|------| ------------|
  | value | int64 | The value of the option. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_integer.html).
  """

  defstruct "@type": "optionValueInteger", "@extra": nil, value: nil
end
defmodule RichTextSubscript do
  @moduledoc  """
  A subscript rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_subscript.html).
  """

  defstruct "@type": "richTextSubscript", "@extra": nil, text: nil
end
defmodule MessageProximityAlertTriggered do
  @moduledoc  """
  A user in the chat came within proximity alert range.

  | Name | Type | Description |
  |------|------| ------------|
  | traveler_id | MessageSender | The identifier of a user or chat that triggered the proximity alert. |
  | watcher_id | MessageSender | The identifier of a user or chat that subscribed for the proximity alert. |
  | distance | int32 | The distance between the users. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_proximity_alert_triggered.html).
  """

  defstruct "@type": "messageProximityAlertTriggered", "@extra": nil, traveler_id: nil, watcher_id: nil, distance: nil
end
defmodule SearchMessagesFilterUnreadReaction do
  @moduledoc  """
  Returns only messages with unread reactions for the current user. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_unread_reaction.html).
  """

  defstruct "@type": "searchMessagesFilterUnreadReaction", "@extra": nil
end
defmodule PremiumLimitTypePinnedChatCount do
  @moduledoc  """
  The maximum number of pinned chats in the main chat list.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_pinned_chat_count.html).
  """

  defstruct "@type": "premiumLimitTypePinnedChatCount", "@extra": nil
end
defmodule SentWebAppMessage do
  @moduledoc  """
  Information about the message sent by answerWebAppQuery.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_message_id | string | Identifier of the sent inline message, if known. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sent_web_app_message.html).
  """

  defstruct "@type": "sentWebAppMessage", "@extra": nil, inline_message_id: nil
end
defmodule MessagePaymentSuccessful do
  @moduledoc  """
  A payment has been completed.

  | Name | Type | Description |
  |------|------| ------------|
  | invoice_chat_id | int53 | Identifier of the chat, containing the corresponding invoice message; 0 if unknown. |
  | invoice_message_id | int53 | Identifier of the message with the corresponding invoice; can be 0 or an identifier of a deleted message. |
  | currency | string | Currency for the price of the product. |
  | total_amount | int53 | Total price for the product, in the smallest units of the currency. |
  | is_recurring | bool | True, if this is a recurring payment. |
  | is_first_recurring | bool | True, if this is the first recurring payment. |
  | invoice_name | string | Name of the invoice; may be empty if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_payment_successful.html).
  """

  defstruct "@type": "messagePaymentSuccessful", "@extra": nil, invoice_chat_id: nil, invoice_message_id: nil, currency: nil, total_amount: nil, is_recurring: nil, is_first_recurring: nil, invoice_name: nil
end
defmodule UpdateChatHasProtectedContent do
  @moduledoc  """
  A chat content was allowed or restricted for saving.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | has_protected_content | bool | New value of has_protected_content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_has_protected_content.html).
  """

  defstruct "@type": "updateChatHasProtectedContent", "@extra": nil, chat_id: nil, has_protected_content: nil
end
defmodule ValidatedOrderInfo do
  @moduledoc  """
  Contains a temporary identifier of validated order information, which is stored for one hour. Also contains the available shipping options.

  | Name | Type | Description |
  |------|------| ------------|
  | order_info_id | string | Temporary identifier of the order information. |
  | shipping_options | shippingOption | Available shipping options. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1validated_order_info.html).
  """

  defstruct "@type": "validatedOrderInfo", "@extra": nil, order_info_id: nil, shipping_options: nil
end
defmodule PageBlockCollage do
  @moduledoc  """
  A collage.

  | Name | Type | Description |
  |------|------| ------------|
  | page_blocks | PageBlock | Collage item contents. |
  | caption | pageBlockCaption | Block caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_collage.html).
  """

  defstruct "@type": "pageBlockCollage", "@extra": nil, page_blocks: nil, caption: nil
end
defmodule InputInlineQueryResultVideo do
  @moduledoc  """
  Represents a link to a page containing an embedded video player or a video file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the result. |
  | description | string | A short description of the result, if known. |
  | thumbnail_url | string | The URL of the video thumbnail (JPEG), if it exists. |
  | video_url | string | URL of the embedded video player or video file. |
  | mime_type | string | MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported. |
  | video_width | int32 | Width of the video. |
  | video_height | int32 | Height of the video. |
  | video_duration | int32 | Video duration, in seconds. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_video.html">inputMessageVideo</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_video.html).
  """

  defstruct "@type": "inputInlineQueryResultVideo", "@extra": nil, id: nil, title: nil, description: nil, thumbnail_url: nil, video_url: nil, mime_type: nil, video_width: nil, video_height: nil, video_duration: nil, reply_markup: nil, input_message_content: nil
end
defmodule BotCommandScopeAllPrivateChats do
  @moduledoc  """
  A scope covering all private chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_all_private_chats.html).
  """

  defstruct "@type": "botCommandScopeAllPrivateChats", "@extra": nil
end
defmodule InputBackgroundRemote do
  @moduledoc  """
  A background from the server.

  | Name | Type | Description |
  |------|------| ------------|
  | background_id | int64 | The background identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_background_remote.html).
  """

  defstruct "@type": "inputBackgroundRemote", "@extra": nil, background_id: nil
end
defmodule UpdatePollAnswer do
  @moduledoc  """
  A user changed the answer to a poll; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | poll_id | int64 | Unique poll identifier. |
  | user_id | int53 | The user, who changed the answer to the poll. |
  | option_ids | int32 | 0-based identifiers of answer options, chosen by the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_poll_answer.html).
  """

  defstruct "@type": "updatePollAnswer", "@extra": nil, poll_id: nil, user_id: nil, option_ids: nil
end
defmodule TMeUrlTypeChatInvite do
  @moduledoc  """
  A chat invite link.

  | Name | Type | Description |
  |------|------| ------------|
  | info | chatInviteLinkInfo | Information about the chat invite link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_chat_invite.html).
  """

  defstruct "@type": "tMeUrlTypeChatInvite", "@extra": nil, info: nil
end
defmodule FileType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_file_type.html).
  """

  defstruct "@type": "FileType", "@extra": nil
end
defmodule UpdateNewCustomEvent do
  @moduledoc  """
  A new incoming event; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | event | string | A JSON-serialized event. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_custom_event.html).
  """

  defstruct "@type": "updateNewCustomEvent", "@extra": nil, event: nil
end
defmodule PublicChatTypeIsLocationBased do
  @moduledoc  """
  The chat is public, because it is a location-based supergroup.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1public_chat_type_is_location_based.html).
  """

  defstruct "@type": "publicChatTypeIsLocationBased", "@extra": nil
end
defmodule TextEntity do
  @moduledoc  """
  Represents a part of the text that needs to be formatted in some unusual way.

  | Name | Type | Description |
  |------|------| ------------|
  | offset | int32 | Offset of the entity, in UTF-16 code units. |
  | length | int32 | Length of the entity, in UTF-16 code units. |
  | type | TextEntityType | Type of the entity. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity.html).
  """

  defstruct "@type": "textEntity", "@extra": nil, offset: nil, length: nil, type: nil
end
defmodule PassportSuitableElement do
  @moduledoc  """
  Contains information about a Telegram Passport element that was requested by a service.

  | Name | Type | Description |
  |------|------| ------------|
  | type | PassportElementType | Type of the element. |
  | is_selfie_required | bool | True, if a selfie is required with the identity document. |
  | is_translation_required | bool | True, if a certified English translation is required with the document. |
  | is_native_name_required | bool | True, if personal details must include the user's name in the language of their country of residence. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_suitable_element.html).
  """

  defstruct "@type": "passportSuitableElement", "@extra": nil, type: nil, is_selfie_required: nil, is_translation_required: nil, is_native_name_required: nil
end
defmodule PageBlockAnchor do
  @moduledoc  """
  An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Name of the anchor. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_anchor.html).
  """

  defstruct "@type": "pageBlockAnchor", "@extra": nil, name: nil
end
defmodule Address do
  @moduledoc  """
  Describes an address.

  | Name | Type | Description |
  |------|------| ------------|
  | country_code | string | A two-letter ISO 3166-1 alpha-2 country code. |
  | state | string | State, if applicable. |
  | city | string | City. |
  | street_line1 | string | First line of the address. |
  | street_line2 | string | Second line of the address. |
  | postal_code | string | Address postal code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1address.html).
  """

  defstruct "@type": "address", "@extra": nil, country_code: nil, state: nil, city: nil, street_line1: nil, street_line2: nil, postal_code: nil
end
defmodule CheckChatUsernameResultUsernameOccupied do
  @moduledoc  """
  The username is occupied.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_username_occupied.html).
  """

  defstruct "@type": "checkChatUsernameResultUsernameOccupied", "@extra": nil
end
defmodule CallbackQueryPayloadData do
  @moduledoc  """
  The payload for a general callback button.

  | Name | Type | Description |
  |------|------| ------------|
  | data | bytes | Data that was attached to the callback button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_payload_data.html).
  """

  defstruct "@type": "callbackQueryPayloadData", "@extra": nil, data: nil
end
defmodule ChatEventVideoChatMuteNewParticipantsToggled do
  @moduledoc  """
  The mute_new_participants setting of a video chat was toggled.

  | Name | Type | Description |
  |------|------| ------------|
  | mute_new_participants | bool | New value of the mute_new_participants setting. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_mute_new_participants_toggled.html).
  """

  defstruct "@type": "chatEventVideoChatMuteNewParticipantsToggled", "@extra": nil, mute_new_participants: nil
end
defmodule FileTypeSecretThumbnail do
  @moduledoc  """
  The file is a thumbnail of a file from a secret chat.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_secret_thumbnail.html).
  """

  defstruct "@type": "fileTypeSecretThumbnail", "@extra": nil
end
defmodule InputInlineQueryResultVenue do
  @moduledoc  """
  Represents information about a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | venue | venue | Venue result. |
  | thumbnail_url | string | URL of the result thumbnail, if it exists. |
  | thumbnail_width | int32 | Thumbnail width, if known. |
  | thumbnail_height | int32 | Thumbnail height, if known. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_venue.html).
  """

  defstruct "@type": "inputInlineQueryResultVenue", "@extra": nil, id: nil, venue: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule PushMessageContentDocument do
  @moduledoc  """
  A document message (a general file).

  | Name | Type | Description |
  |------|------| ------------|
  | document | document | Message content; may be null. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_document.html).
  """

  defstruct "@type": "pushMessageContentDocument", "@extra": nil, document: nil, is_pinned: nil
end
defmodule MessageChatAddMembers do
  @moduledoc  """
  New chat members were added.

  | Name | Type | Description |
  |------|------| ------------|
  | member_user_ids | int53 | User identifiers of the new members. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_add_members.html).
  """

  defstruct "@type": "messageChatAddMembers", "@extra": nil, member_user_ids: nil
end
defmodule MessageLink do
  @moduledoc  """
  Contains an HTTPS link to a message in a supergroup or channel.

  | Name | Type | Description |
  |------|------| ------------|
  | link | string | Message link. |
  | is_public | bool | True, if the link will work for non-members of the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_link.html).
  """

  defstruct "@type": "messageLink", "@extra": nil, link: nil, is_public: nil
end
defmodule CallProblemDistortedVideo do
  @moduledoc  """
  The video was distorted.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_distorted_video.html).
  """

  defstruct "@type": "callProblemDistortedVideo", "@extra": nil
end
defmodule ChatEventInvitesToggled do
  @moduledoc  """
  The can_invite_users permission of a supergroup chat was toggled.

  | Name | Type | Description |
  |------|------| ------------|
  | can_invite_users | bool | New value of can_invite_users permission. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_invites_toggled.html).
  """

  defstruct "@type": "chatEventInvitesToggled", "@extra": nil, can_invite_users: nil
end
defmodule ChatAdministratorRights do
  @moduledoc  """
  Describes rights of the administrator.

  | Name | Type | Description |
  |------|------| ------------|
  | can_manage_chat | bool | True, if the administrator can get chat event log, get chat statistics, get message statistics in channels, get channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other privilege; applicable to supergroups and channels only. |
  | can_change_info | bool | True, if the administrator can change the chat title, photo, and other settings. |
  | can_post_messages | bool | True, if the administrator can create channel posts; applicable to channels only. |
  | can_edit_messages | bool | True, if the administrator can edit messages of other users and pin messages; applicable to channels only. |
  | can_delete_messages | bool | True, if the administrator can delete messages of other users. |
  | can_invite_users | bool | True, if the administrator can invite new users to the chat. |
  | can_restrict_members | bool | True, if the administrator can restrict, ban, or unban chat members; always true for channels. |
  | can_pin_messages | bool | True, if the administrator can pin messages; applicable to basic groups and supergroups only. |
  | can_promote_members | bool | True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that were directly or indirectly promoted by them. |
  | can_manage_video_chats | bool | True, if the administrator can manage video chats. |
  | is_anonymous | bool | True, if the administrator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_administrator_rights.html).
  """

  defstruct "@type": "chatAdministratorRights", "@extra": nil, can_manage_chat: nil, can_change_info: nil, can_post_messages: nil, can_edit_messages: nil, can_delete_messages: nil, can_invite_users: nil, can_restrict_members: nil, can_pin_messages: nil, can_promote_members: nil, can_manage_video_chats: nil, is_anonymous: nil
end
defmodule NotificationSounds do
  @moduledoc  """
  Contains a list of notification sounds.

  | Name | Type | Description |
  |------|------| ------------|
  | notification_sounds | notificationSound | A list of notification sounds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_sounds.html).
  """

  defstruct "@type": "notificationSounds", "@extra": nil, notification_sounds: nil
end
defmodule PremiumLimitTypeChatFilterChosenChatCount do
  @moduledoc  """
  The maximum number of pinned and always included, or always excluded chats in a chat filter.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_chat_filter_chosen_chat_count.html).
  """

  defstruct "@type": "premiumLimitTypeChatFilterChosenChatCount", "@extra": nil
end
defmodule InputPassportElementEmailAddress do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's email address.

  | Name | Type | Description |
  |------|------| ------------|
  | email_address | string | The email address to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_email_address.html).
  """

  defstruct "@type": "inputPassportElementEmailAddress", "@extra": nil, email_address: nil
end
defmodule Hashtags do
  @moduledoc  """
  Contains a list of hashtags.

  | Name | Type | Description |
  |------|------| ------------|
  | hashtags | string | A list of hashtags. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1hashtags.html).
  """

  defstruct "@type": "hashtags", "@extra": nil, hashtags: nil
end
defmodule InputMessageGame do
  @moduledoc  """
  A message with a game; not supported for channels or secret chats.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_user_id | int53 | User identifier of the bot that owns the game. |
  | game_short_name | string | Short name of the game. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_game.html).
  """

  defstruct "@type": "inputMessageGame", "@extra": nil, bot_user_id: nil, game_short_name: nil
end
defmodule BackgroundTypeWallpaper do
  @moduledoc  """
  A wallpaper in JPEG format.

  | Name | Type | Description |
  |------|------| ------------|
  | is_blurred | bool | True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12. |
  | is_moving | bool | True, if the background needs to be slightly moved when device is tilted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_type_wallpaper.html).
  """

  defstruct "@type": "backgroundTypeWallpaper", "@extra": nil, is_blurred: nil, is_moving: nil
end
defmodule NotificationGroupTypeCalls do
  @moduledoc  """
  A group containing notifications of type notificationTypeNewCall.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group_type_calls.html).
  """

  defstruct "@type": "notificationGroupTypeCalls", "@extra": nil
end
defmodule ChatStatisticsMessageInteractionInfo do
  @moduledoc  """
  Contains statistics about interactions with a message.

  | Name | Type | Description |
  |------|------| ------------|
  | message_id | int53 | Message identifier. |
  | view_count | int32 | Number of times the message was viewed. |
  | forward_count | int32 | Number of times the message was forwarded. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_message_interaction_info.html).
  """

  defstruct "@type": "chatStatisticsMessageInteractionInfo", "@extra": nil, message_id: nil, view_count: nil, forward_count: nil
end
defmodule BotInfo do
  @moduledoc  """
  Contains information about a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | share_text | string | The text that is shown on the bot's profile page and is sent together with the link when users share the bot. |
  | description | string | The text shown in the chat with the bot if the chat is empty. |
  | photo | photo | Photo shown in the chat with the bot if the chat is empty; may be null. |
  | animation | animation | Animation shown in the chat with the bot if the chat is empty; may be null. |
  | menu_button | botMenuButton | Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown. |
  | commands | botCommand | List of the bot commands. |
  | default_group_administrator_rights | chatAdministratorRights | Default administrator rights for adding the bot to basic group and supergroup chats; may be null. |
  | default_channel_administrator_rights | chatAdministratorRights | Default administrator rights for adding the bot to channels; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_info.html).
  """

  defstruct "@type": "botInfo", "@extra": nil, share_text: nil, description: nil, photo: nil, animation: nil, menu_button: nil, commands: nil, default_group_administrator_rights: nil, default_channel_administrator_rights: nil
end
defmodule InputMessageVoiceNote do
  @moduledoc  """
  A voice note message.

  | Name | Type | Description |
  |------|------| ------------|
  | voice_note | InputFile | Voice note to be sent. |
  | duration | int32 | Duration of the voice note, in seconds. |
  | waveform | bytes | Waveform representation of the voice note, in 5-bit format. |
  | caption | formattedText | Voice note caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_voice_note.html).
  """

  defstruct "@type": "inputMessageVoiceNote", "@extra": nil, voice_note: nil, duration: nil, waveform: nil, caption: nil
end
defmodule InputMessageDice do
  @moduledoc  """
  A dice message.

  | Name | Type | Description |
  |------|------| ------------|
  | emoji | string | Emoji on which the dice throw animation is based. |
  | clear_draft | bool | True, if the chat message draft must be deleted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_dice.html).
  """

  defstruct "@type": "inputMessageDice", "@extra": nil, emoji: nil, clear_draft: nil
end
defmodule SupergroupMembersFilterAdministrators do
  @moduledoc  """
  Returns the owner and administrators.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_administrators.html).
  """

  defstruct "@type": "supergroupMembersFilterAdministrators", "@extra": nil
end
defmodule PushMessageContentVideo do
  @moduledoc  """
  A video message.

  | Name | Type | Description |
  |------|------| ------------|
  | video | video | Message content; may be null. |
  | caption | string | Video caption. |
  | is_secret | bool | True, if the video is secret. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_video.html).
  """

  defstruct "@type": "pushMessageContentVideo", "@extra": nil, video: nil, caption: nil, is_secret: nil, is_pinned: nil
end
defmodule ThemeSettings do
  @moduledoc  """
  Describes theme settings.

  | Name | Type | Description |
  |------|------| ------------|
  | accent_color | int32 | Theme accent color in ARGB format. |
  | background | background | The background to be used in chats; may be null. |
  | outgoing_message_fill | BackgroundFill | The fill to be used as a background for outgoing messages. |
  | animate_outgoing_message_fill | bool | If true, the freeform gradient fill needs to be animated on every sent message. |
  | outgoing_message_accent_color | int32 | Accent color of outgoing messages in ARGB format. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1theme_settings.html).
  """

  defstruct "@type": "themeSettings", "@extra": nil, accent_color: nil, background: nil, outgoing_message_fill: nil, animate_outgoing_message_fill: nil, outgoing_message_accent_color: nil
end
defmodule InputCredentials do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_credentials.html).
  """

  defstruct "@type": "InputCredentials", "@extra": nil
end
defmodule Updates do
  @moduledoc  """
  Contains a list of updates.

  | Name | Type | Description |
  |------|------| ------------|
  | updates | Update | List of updates. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1updates.html).
  """

  defstruct "@type": "updates", "@extra": nil, updates: nil
end
defmodule ChatMembersFilterBanned do
  @moduledoc  """
  Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_banned.html).
  """

  defstruct "@type": "chatMembersFilterBanned", "@extra": nil
end
defmodule PageBlock do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_page_block.html).
  """

  defstruct "@type": "PageBlock", "@extra": nil
end
defmodule ConnectionStateUpdating do
  @moduledoc  """
  Downloading data received while the application was offline.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_updating.html).
  """

  defstruct "@type": "connectionStateUpdating", "@extra": nil
end
defmodule NotificationTypeNewMessage do
  @moduledoc  """
  New message was received.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | The message. |
  | show_preview | bool | True, if message content must be displayed in notifications. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_type_new_message.html).
  """

  defstruct "@type": "notificationTypeNewMessage", "@extra": nil, message: nil, show_preview: nil
end
defmodule BackgroundFill do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_background_fill.html).
  """

  defstruct "@type": "BackgroundFill", "@extra": nil
end
defmodule SessionTypeMac do
  @moduledoc  """
  The session is running on a Mac device.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_mac.html).
  """

  defstruct "@type": "sessionTypeMac", "@extra": nil
end
defmodule UserPrivacySettingAllowChatInvites do
  @moduledoc  """
  A privacy setting for managing whether the user can be invited to chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_chat_invites.html).
  """

  defstruct "@type": "userPrivacySettingAllowChatInvites", "@extra": nil
end
defmodule PassportElementType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_passport_element_type.html).
  """

  defstruct "@type": "PassportElementType", "@extra": nil
end
defmodule PageBlockAuthorDate do
  @moduledoc  """
  The author and publishing date of a page.

  | Name | Type | Description |
  |------|------| ------------|
  | author | RichText | Author. |
  | publish_date | int32 | Point in time (Unix timestamp) when the article was published; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_author_date.html).
  """

  defstruct "@type": "pageBlockAuthorDate", "@extra": nil, author: nil, publish_date: nil
end
defmodule Users do
  @moduledoc  """
  Represents a list of users.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of users found. |
  | user_ids | int53 | A list of user identifiers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1users.html).
  """

  defstruct "@type": "users", "@extra": nil, total_count: nil, user_ids: nil
end
defmodule PushMessageContentChatAddMembers do
  @moduledoc  """
  New chat members were invited to a group.

  | Name | Type | Description |
  |------|------| ------------|
  | member_name | string | Name of the added member. |
  | is_current_user | bool | True, if the current user was added to the group. |
  | is_returned | bool | True, if the user has returned to the group themselves. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_add_members.html).
  """

  defstruct "@type": "pushMessageContentChatAddMembers", "@extra": nil, member_name: nil, is_current_user: nil, is_returned: nil
end
defmodule MessageVideoChatStarted do
  @moduledoc  """
  A newly created video chat.

  | Name | Type | Description |
  |------|------| ------------|
  | group_call_id | int32 | Identifier of the video chat. The video chat can be received through the method <a class="el" href="classtd_1_1td__api_1_1get_group_call.html">getGroupCall</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video_chat_started.html).
  """

  defstruct "@type": "messageVideoChatStarted", "@extra": nil, group_call_id: nil
end
defmodule UnreadReaction do
  @moduledoc  """
  Contains information about an unread reaction to a message.

  | Name | Type | Description |
  |------|------| ------------|
  | reaction | string | Text representation of the reaction. |
  | sender_id | MessageSender | Identifier of the sender, added the reaction. |
  | is_big | bool | True, if the reaction was added with a big animation. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1unread_reaction.html).
  """

  defstruct "@type": "unreadReaction", "@extra": nil, reaction: nil, sender_id: nil, is_big: nil
end
defmodule NotificationTypeNewSecretChat do
  @moduledoc  """
  New secret chat was created.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_type_new_secret_chat.html).
  """

  defstruct "@type": "notificationTypeNewSecretChat", "@extra": nil
end
defmodule TextParseMode do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_text_parse_mode.html).
  """

  defstruct "@type": "TextParseMode", "@extra": nil
end
defmodule UpdateChatPendingJoinRequests do
  @moduledoc  """
  The chat pending join requests were changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | pending_join_requests | chatJoinRequestsInfo | The new data about pending join requests; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_pending_join_requests.html).
  """

  defstruct "@type": "updateChatPendingJoinRequests", "@extra": nil, chat_id: nil, pending_join_requests: nil
end
defmodule ChatTypePrivate do
  @moduledoc  """
  An ordinary chat with a user.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_private.html).
  """

  defstruct "@type": "chatTypePrivate", "@extra": nil, user_id: nil
end
defmodule NotificationTypeNewPushMessage do
  @moduledoc  """
  New message was received through a push notification.

  | Name | Type | Description |
  |------|------| ------------|
  | message_id | int53 | The message identifier. The message will not be available in the chat history, but the ID can be used in <a class="el" href="classtd_1_1td__api_1_1view_messages.html">viewMessages</a>, or as reply_to_message_id. |
  | sender_id | MessageSender | Identifier of the sender of the message. Corresponding user or chat may be inaccessible. |
  | sender_name | string | Name of the sender. |
  | is_outgoing | bool | True, if the message is outgoing. |
  | content | PushMessageContent | Push message content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_type_new_push_message.html).
  """

  defstruct "@type": "notificationTypeNewPushMessage", "@extra": nil, message_id: nil, sender_id: nil, sender_name: nil, is_outgoing: nil, content: nil
end
defmodule ChatSourceMtprotoProxy do
  @moduledoc  """
  The chat is sponsored by the user's MTProxy server.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_source_mtproto_proxy.html).
  """

  defstruct "@type": "chatSourceMtprotoProxy", "@extra": nil
end
defmodule AuthorizationStateWaitEncryptionKey do
  @moduledoc  """
  TDLib needs an encryption key to decrypt the local database.

  | Name | Type | Description |
  |------|------| ------------|
  | is_encrypted | bool | True, if the database is currently encrypted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_encryption_key.html).
  """

  defstruct "@type": "authorizationStateWaitEncryptionKey", "@extra": nil, is_encrypted: nil
end
defmodule MessageWebAppDataReceived do
  @moduledoc  """
  Data from a Web App has been received; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | button_text | string | Text of the <a class="el" href="classtd_1_1td__api_1_1keyboard_button_type_web_app.html">keyboardButtonTypeWebApp</a> button, which opened the Web App. |
  | data | string | Received data. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_web_app_data_received.html).
  """

  defstruct "@type": "messageWebAppDataReceived", "@extra": nil, button_text: nil, data: nil
end
defmodule TopChatCategoryForwardChats do
  @moduledoc  """
  A category containing frequently used chats used to forward messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_forward_chats.html).
  """

  defstruct "@type": "topChatCategoryForwardChats", "@extra": nil
end
defmodule InputInlineQueryResult do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_inline_query_result.html).
  """

  defstruct "@type": "InputInlineQueryResult", "@extra": nil
end
defmodule PassportElementRentalAgreement do
  @moduledoc  """
  A Telegram Passport element containing the user's rental agreement.

  | Name | Type | Description |
  |------|------| ------------|
  | rental_agreement | personalDocument | Rental agreement. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_rental_agreement.html).
  """

  defstruct "@type": "passportElementRentalAgreement", "@extra": nil, rental_agreement: nil
end
defmodule PushMessageContentChatJoinByLink do
  @moduledoc  """
  A new member joined the chat via an invite link.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_join_by_link.html).
  """

  defstruct "@type": "pushMessageContentChatJoinByLink", "@extra": nil
end
defmodule LogStream do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_log_stream.html).
  """

  defstruct "@type": "LogStream", "@extra": nil
end
defmodule ChatEventMessageTtlChanged do
  @moduledoc  """
  The message TTL was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_message_ttl | int32 | Previous value of message_ttl. |
  | new_message_ttl | int32 | New value of message_ttl. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_ttl_changed.html).
  """

  defstruct "@type": "chatEventMessageTtlChanged", "@extra": nil, old_message_ttl: nil, new_message_ttl: nil
end
defmodule ChatStatisticsInviterInfo do
  @moduledoc  """
  Contains statistics about number of new members invited by a user.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier. |
  | added_member_count | int32 | Number of new members invited by the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_inviter_info.html).
  """

  defstruct "@type": "chatStatisticsInviterInfo", "@extra": nil, user_id: nil, added_member_count: nil
end
defmodule Notification do
  @moduledoc  """
  Contains information about a notification.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Unique persistent identifier of this notification. |
  | date | int32 | Notification date. |
  | is_silent | bool | True, if the notification was explicitly sent without sound. |
  | type | NotificationType | Notification type. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification.html).
  """

  defstruct "@type": "notification", "@extra": nil, id: nil, date: nil, is_silent: nil, type: nil
end
defmodule ProxyTypeSocks5 do
  @moduledoc  """
  A SOCKS5 proxy server.

  | Name | Type | Description |
  |------|------| ------------|
  | username | string | Username for logging in; may be empty. |
  | password | string | Password for logging in; may be empty. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy_type_socks5.html).
  """

  defstruct "@type": "proxyTypeSocks5", "@extra": nil, username: nil, password: nil
end
defmodule UpdateFileGenerationStart do
  @moduledoc  """
  The file generation process needs to be started by the application.

  | Name | Type | Description |
  |------|------| ------------|
  | generation_id | int64 | Unique identifier for the generation process. |
  | original_path | string | The path to a file from which a new file is generated; may be empty. |
  | destination_path | string | The path to a file that must be created and where the new file is generated. |
  | conversion | string | String specifying the conversion applied to the original file. If conversion is "#url#" than original_path contains an HTTP/HTTPS URL of a file, which must be downloaded by the application. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_generation_start.html).
  """

  defstruct "@type": "updateFileGenerationStart", "@extra": nil, generation_id: nil, original_path: nil, destination_path: nil, conversion: nil
end
defmodule AuthorizationStateWaitTdlibParameters do
  @moduledoc  """
  TDLib needs TdlibParameters for initialization.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_tdlib_parameters.html).
  """

  defstruct "@type": "authorizationStateWaitTdlibParameters", "@extra": nil
end
defmodule RichTextAnchorLink do
  @moduledoc  """
  A link to an anchor on the same web page.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | The link text. |
  | anchor_name | string | The anchor name. If the name is empty, the link must bring back to top. |
  | url | string | An HTTP URL, opening the anchor. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_anchor_link.html).
  """

  defstruct "@type": "richTextAnchorLink", "@extra": nil, text: nil, anchor_name: nil, url: nil
end
defmodule StickerSetInfo do
  @moduledoc  """
  Represents short information about a sticker set.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Identifier of the sticker set. |
  | title | string | Title of the sticker set. |
  | name | string | Name of the sticker set. |
  | thumbnail | thumbnail | Sticker set thumbnail in WEBP, TGS, or WEBM format with width and height 100; may be null. |
  | thumbnail_outline | closedVectorPath | Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner. |
  | is_installed | bool | True, if the sticker set has been installed by the current user. |
  | is_archived | bool | True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously. |
  | is_official | bool | True, if the sticker set is official. |
  | sticker_type | StickerType | Type of the stickers in the set. |
  | is_viewed | bool | True for already viewed trending sticker sets. |
  | size | int32 | Total number of stickers in the set. |
  | covers | sticker | Up to the first 5 stickers from the set, depending on the context. If the application needs more stickers the full sticker set needs to be requested. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_set_info.html).
  """

  defstruct "@type": "stickerSetInfo", "@extra": nil, id: nil, title: nil, name: nil, thumbnail: nil, thumbnail_outline: nil, is_installed: nil, is_archived: nil, is_official: nil, sticker_type: nil, is_viewed: nil, size: nil, covers: nil
end
defmodule RichTextReference do
  @moduledoc  """
  A reference to a richTexts object on the same web page.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | The text. |
  | anchor_name | string | The name of a <a class="el" href="classtd_1_1td__api_1_1rich_text_anchor.html">richTextAnchor</a> object, which is the first element of the target <a class="el" href="classtd_1_1td__api_1_1rich_texts.html">richTexts</a> object. |
  | url | string | An HTTP URL, opening the reference. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_reference.html).
  """

  defstruct "@type": "richTextReference", "@extra": nil, text: nil, anchor_name: nil, url: nil
end
defmodule ProfilePhoto do
  @moduledoc  """
  Describes a user profile photo.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Photo identifier; 0 for an empty photo. Can be used to find a photo in a list of user profile photos. |
  | small | file | A small (160x160) user profile photo. The file can be downloaded only before the photo is changed. |
  | big | file | A big (640x640) user profile photo. The file can be downloaded only before the photo is changed. |
  | minithumbnail | minithumbnail | User profile photo minithumbnail; may be null. |
  | has_animation | bool | True, if the photo has animated variant. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1profile_photo.html).
  """

  defstruct "@type": "profilePhoto", "@extra": nil, id: nil, small: nil, big: nil, minithumbnail: nil, has_animation: nil
end
defmodule ChatReportReasonUnrelatedLocation do
  @moduledoc  """
  The location-based chat is unrelated to its stated location.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_unrelated_location.html).
  """

  defstruct "@type": "chatReportReasonUnrelatedLocation", "@extra": nil
end
defmodule UpdateSelectedBackground do
  @moduledoc  """
  The selected background has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | for_dark_theme | bool | True, if background for dark theme has changed. |
  | background | background | The new selected background; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_selected_background.html).
  """

  defstruct "@type": "updateSelectedBackground", "@extra": nil, for_dark_theme: nil, background: nil
end
defmodule MessageReaction do
  @moduledoc  """
  Contains information about a reaction to a message.

  | Name | Type | Description |
  |------|------| ------------|
  | reaction | string | Text representation of the reaction. |
  | total_count | int32 | Number of times the reaction was added. |
  | is_chosen | bool | True, if the reaction is chosen by the current user. |
  | recent_sender_ids | MessageSender | Identifiers of at most 3 recent message senders, added the reaction; available in private, basic group and supergroup chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_reaction.html).
  """

  defstruct "@type": "messageReaction", "@extra": nil, reaction: nil, total_count: nil, is_chosen: nil, recent_sender_ids: nil
end
defmodule ChatJoinRequests do
  @moduledoc  """
  Contains a list of requests to join a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of requests found. |
  | requests | chatJoinRequest | List of the requests. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_join_requests.html).
  """

  defstruct "@type": "chatJoinRequests", "@extra": nil, total_count: nil, requests: nil
end
defmodule TextEntityTypeUnderline do
  @moduledoc  """
  An underlined text.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_underline.html).
  """

  defstruct "@type": "textEntityTypeUnderline", "@extra": nil
end
defmodule InternalLinkTypeBotAddToChannel do
  @moduledoc  """
  The link is a link to a Telegram bot, which is supposed to be added to a channel chat as an administrator. Call searchPublicChat with the given bot username and check that the user is a bot, ask the current user to select a channel chat to add the bot to as an administrator. Then call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights and combine received rights with the requested administrator rights. Then show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed rights.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_username | string | Username of the bot. |
  | administrator_rights | chatAdministratorRights | Expected administrator rights for the bot. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_bot_add_to_channel.html).
  """

  defstruct "@type": "internalLinkTypeBotAddToChannel", "@extra": nil, bot_username: nil, administrator_rights: nil
end
defmodule UserPrivacySetting do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_privacy_setting.html).
  """

  defstruct "@type": "UserPrivacySetting", "@extra": nil
end
defmodule PushMessageContentText do
  @moduledoc  """
  A text message.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Message text. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_text.html).
  """

  defstruct "@type": "pushMessageContentText", "@extra": nil, text: nil, is_pinned: nil
end
defmodule MessageChatChangeTitle do
  @moduledoc  """
  An updated chat title.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | New chat title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_change_title.html).
  """

  defstruct "@type": "messageChatChangeTitle", "@extra": nil, title: nil
end
defmodule NetworkType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_network_type.html).
  """

  defstruct "@type": "NetworkType", "@extra": nil
end
defmodule NetworkStatistics do
  @moduledoc  """
  A full list of available network statistic entries.

  | Name | Type | Description |
  |------|------| ------------|
  | since_date | int32 | Point in time (Unix timestamp) from which the statistics are collected. |
  | entries | NetworkStatisticsEntry | Network statistics entries. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_statistics.html).
  """

  defstruct "@type": "networkStatistics", "@extra": nil, since_date: nil, entries: nil
end
defmodule AddedReactions do
  @moduledoc  """
  Represents a list of reactions added to a message.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | The total number of found reactions. |
  | reactions | addedReaction | The list of added reactions. |
  | next_offset | string | The offset for the next request. If empty, there are no more results. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1added_reactions.html).
  """

  defstruct "@type": "addedReactions", "@extra": nil, total_count: nil, reactions: nil, next_offset: nil
end
defmodule LogStreamEmpty do
  @moduledoc  """
  The log is written nowhere.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_stream_empty.html).
  """

  defstruct "@type": "logStreamEmpty", "@extra": nil
end
defmodule FilePart do
  @moduledoc  """
  Contains a part of a file.

  | Name | Type | Description |
  |------|------| ------------|
  | data | bytes | File bytes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_part.html).
  """

  defstruct "@type": "filePart", "@extra": nil, data: nil
end
defmodule PremiumLimitTypeSupergroupCount do
  @moduledoc  """
  The maximum number of joined supergroups and channels.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_supergroup_count.html).
  """

  defstruct "@type": "premiumLimitTypeSupergroupCount", "@extra": nil
end
defmodule MaskPointEyes do
  @moduledoc  """
  The mask is placed relatively to the eyes.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_eyes.html).
  """

  defstruct "@type": "maskPointEyes", "@extra": nil
end
defmodule ChatActionUploadingVideo do
  @moduledoc  """
  The user is uploading a video.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | int32 | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_video.html).
  """

  defstruct "@type": "chatActionUploadingVideo", "@extra": nil, progress: nil
end
defmodule MessageChatSetTtl do
  @moduledoc  """
  The TTL (Time To Live) setting for messages in the chat has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | ttl | int32 | New message TTL. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_set_ttl.html).
  """

  defstruct "@type": "messageChatSetTtl", "@extra": nil, ttl: nil
end
defmodule ChatEventAvailableReactionsChanged do
  @moduledoc  """
  The chat available reactions were changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_available_reactions | string | Previous chat available reactions. |
  | new_available_reactions | string | New chat available reactions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_available_reactions_changed.html).
  """

  defstruct "@type": "chatEventAvailableReactionsChanged", "@extra": nil, old_available_reactions: nil, new_available_reactions: nil
end
defmodule ChatEventMemberPromoted do
  @moduledoc  """
  A chat member has gained/lost administrator status, or the list of their administrator privileges has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | Affected chat member user identifier. |
  | old_status | ChatMemberStatus | Previous status of the chat member. |
  | new_status | ChatMemberStatus | New status of the chat member. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_promoted.html).
  """

  defstruct "@type": "chatEventMemberPromoted", "@extra": nil, user_id: nil, old_status: nil, new_status: nil
end
defmodule ChatActionRecordingVideoNote do
  @moduledoc  """
  The user is recording a video note.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_recording_video_note.html).
  """

  defstruct "@type": "chatActionRecordingVideoNote", "@extra": nil
end
defmodule UpdateSavedAnimations do
  @moduledoc  """
  The list of saved animations was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | animation_ids | int32 | The new list of file identifiers of saved animations. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_saved_animations.html).
  """

  defstruct "@type": "updateSavedAnimations", "@extra": nil, animation_ids: nil
end
defmodule TemporaryPasswordState do
  @moduledoc  """
  Returns information about the availability of a temporary password, which can be used for payments.

  | Name | Type | Description |
  |------|------| ------------|
  | has_password | bool | True, if a temporary password is available. |
  | valid_for | int32 | Time left before the temporary password expires, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1temporary_password_state.html).
  """

  defstruct "@type": "temporaryPasswordState", "@extra": nil, has_password: nil, valid_for: nil
end
defmodule UpdateUnreadChatCount do
  @moduledoc  """
  Number of unread chats, i.e. with unread messages or marked as unread, has changed. This update is sent only if the message database is used.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_list | ChatList | The chat list with changed number of unread messages. |
  | total_count | int32 | Approximate total number of chats in the chat list. |
  | unread_count | int32 | Total number of unread chats. |
  | unread_unmuted_count | int32 | Total number of unread unmuted chats. |
  | marked_as_unread_count | int32 | Total number of chats marked as unread. |
  | marked_as_unread_unmuted_count | int32 | Total number of unmuted chats marked as unread. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_unread_chat_count.html).
  """

  defstruct "@type": "updateUnreadChatCount", "@extra": nil, chat_list: nil, total_count: nil, unread_count: nil, unread_unmuted_count: nil, marked_as_unread_count: nil, marked_as_unread_unmuted_count: nil
end
defmodule PollType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_poll_type.html).
  """

  defstruct "@type": "PollType", "@extra": nil
end
defmodule InternalLinkTypeFilterSettings do
  @moduledoc  """
  The link is a link to the filter settings section of the app.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_filter_settings.html).
  """

  defstruct "@type": "internalLinkTypeFilterSettings", "@extra": nil
end
defmodule PushMessageContentVoiceNote do
  @moduledoc  """
  A voice note message.

  | Name | Type | Description |
  |------|------| ------------|
  | voice_note | voiceNote | Message content; may be null. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_voice_note.html).
  """

  defstruct "@type": "pushMessageContentVoiceNote", "@extra": nil, voice_note: nil, is_pinned: nil
end
defmodule InlineQueryResultLocation do
  @moduledoc  """
  Represents a point on the map.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | location | location | Location result. |
  | title | string | Title of the result. |
  | thumbnail | thumbnail | Result thumbnail in JPEG format; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_location.html).
  """

  defstruct "@type": "inlineQueryResultLocation", "@extra": nil, id: nil, location: nil, title: nil, thumbnail: nil
end
defmodule PageBlockFooter do
  @moduledoc  """
  The footer of a page.

  | Name | Type | Description |
  |------|------| ------------|
  | footer | RichText | Footer. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_footer.html).
  """

  defstruct "@type": "pageBlockFooter", "@extra": nil, footer: nil
end
defmodule Sessions do
  @moduledoc  """
  Contains a list of sessions.

  | Name | Type | Description |
  |------|------| ------------|
  | sessions | session | List of sessions. |
  | inactive_session_ttl_days | int32 | Number of days of inactivity before sessions will automatically be terminated; 1-366 days. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sessions.html).
  """

  defstruct "@type": "sessions", "@extra": nil, sessions: nil, inactive_session_ttl_days: nil
end
defmodule JsonValueString do
  @moduledoc  """
  Represents a string JSON value.

  | Name | Type | Description |
  |------|------| ------------|
  | value | string | The value. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_string.html).
  """

  defstruct "@type": "jsonValueString", "@extra": nil, value: nil
end
defmodule EmailAddressAuthenticationCodeInfo do
  @moduledoc  """
  Information about the email address authentication code that was sent.

  | Name | Type | Description |
  |------|------| ------------|
  | email_address_pattern | string | Pattern of the email address to which an authentication code was sent. |
  | length | int32 | Length of the code; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1email_address_authentication_code_info.html).
  """

  defstruct "@type": "emailAddressAuthenticationCodeInfo", "@extra": nil, email_address_pattern: nil, length: nil
end
defmodule ChatInviteLinkCounts do
  @moduledoc  """
  Contains a list of chat invite link counts.

  | Name | Type | Description |
  |------|------| ------------|
  | invite_link_counts | chatInviteLinkCount | List of invite link counts. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_counts.html).
  """

  defstruct "@type": "chatInviteLinkCounts", "@extra": nil, invite_link_counts: nil
end
defmodule UpdateBasicGroup do
  @moduledoc  """
  Some data of a basic group has changed. This update is guaranteed to come before the basic group identifier is returned to the application.

  | Name | Type | Description |
  |------|------| ------------|
  | basic_group | basicGroup | New data about the group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_basic_group.html).
  """

  defstruct "@type": "updateBasicGroup", "@extra": nil, basic_group: nil
end
defmodule InputPassportElementErrorSourceSelfie do
  @moduledoc  """
  The selfie contains an error. The error is considered resolved when the file with the selfie changes.

  | Name | Type | Description |
  |------|------| ------------|
  | file_hash | bytes | Current hash of the file containing the selfie. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_selfie.html).
  """

  defstruct "@type": "inputPassportElementErrorSourceSelfie", "@extra": nil, file_hash: nil
end
defmodule MessageDocument do
  @moduledoc  """
  A document message (general file).

  | Name | Type | Description |
  |------|------| ------------|
  | document | document | The document description. |
  | caption | formattedText | Document caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_document.html).
  """

  defstruct "@type": "messageDocument", "@extra": nil, document: nil, caption: nil
end
defmodule AuthorizationStateClosing do
  @moduledoc  """
  TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_closing.html).
  """

  defstruct "@type": "authorizationStateClosing", "@extra": nil
end
defmodule MessagePoll do
  @moduledoc  """
  A message with a poll.

  | Name | Type | Description |
  |------|------| ------------|
  | poll | poll | The poll description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_poll.html).
  """

  defstruct "@type": "messagePoll", "@extra": nil, poll: nil
end
defmodule CallStateDiscarded do
  @moduledoc  """
  The call has ended successfully.

  | Name | Type | Description |
  |------|------| ------------|
  | reason | CallDiscardReason | The reason, why the call has ended. |
  | need_rating | bool | True, if the call rating must be sent to the server. |
  | need_debug_information | bool | True, if the call debug information must be sent to the server. |
  | need_log | bool | True, if the call log must be sent to the server. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_discarded.html).
  """

  defstruct "@type": "callStateDiscarded", "@extra": nil, reason: nil, need_rating: nil, need_debug_information: nil, need_log: nil
end
defmodule LanguagePackStringValuePluralized do
  @moduledoc  """
  A language pack string which has different forms based on the number of some object it mentions. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more information.

  | Name | Type | Description |
  |------|------| ------------|
  | zero_value | string | Value for zero objects. |
  | one_value | string | Value for one object. |
  | two_value | string | Value for two objects. |
  | few_value | string | Value for few objects. |
  | many_value | string | Value for many objects. |
  | other_value | string | Default value. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_string_value_pluralized.html).
  """

  defstruct "@type": "languagePackStringValuePluralized", "@extra": nil, zero_value: nil, one_value: nil, two_value: nil, few_value: nil, many_value: nil, other_value: nil
end
defmodule MessagePassportDataSent do
  @moduledoc  """
  Telegram Passport data has been sent to a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | types | PassportElementType | List of Telegram Passport element types sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_passport_data_sent.html).
  """

  defstruct "@type": "messagePassportDataSent", "@extra": nil, types: nil
end
defmodule DiceStickersRegular do
  @moduledoc  """
  A regular animated sticker.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | sticker | The animated sticker with the dice animation. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1dice_stickers_regular.html).
  """

  defstruct "@type": "diceStickersRegular", "@extra": nil, sticker: nil
end
defmodule TextEntityTypeMention do
  @moduledoc  """
  A mention of a user by their username.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_mention.html).
  """

  defstruct "@type": "textEntityTypeMention", "@extra": nil
end
defmodule ChatReportReason do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_report_reason.html).
  """

  defstruct "@type": "ChatReportReason", "@extra": nil
end
defmodule ChatStatisticsSupergroup do
  @moduledoc  """
  A detailed statistics about a supergroup chat.

  | Name | Type | Description |
  |------|------| ------------|
  | period | dateRange | A period to which the statistics applies. |
  | member_count | statisticalValue | Number of members in the chat. |
  | message_count | statisticalValue | Number of messages sent to the chat. |
  | viewer_count | statisticalValue | Number of users who viewed messages in the chat. |
  | sender_count | statisticalValue | Number of users who sent messages to the chat. |
  | member_count_graph | StatisticalGraph | A graph containing number of members in the chat. |
  | join_graph | StatisticalGraph | A graph containing number of members joined and left the chat. |
  | join_by_source_graph | StatisticalGraph | A graph containing number of new member joins per source. |
  | language_graph | StatisticalGraph | A graph containing distribution of active users per language. |
  | message_content_graph | StatisticalGraph | A graph containing distribution of sent messages by content type. |
  | action_graph | StatisticalGraph | A graph containing number of different actions in the chat. |
  | day_graph | StatisticalGraph | A graph containing distribution of message views per hour. |
  | week_graph | StatisticalGraph | A graph containing distribution of message views per day of week. |
  | top_senders | chatStatisticsMessageSenderInfo | List of users sent most messages in the last week. |
  | top_administrators | chatStatisticsAdministratorActionsInfo | List of most active administrators in the last week. |
  | top_inviters | chatStatisticsInviterInfo | List of most active inviters of new members in the last week. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_supergroup.html).
  """

  defstruct "@type": "chatStatisticsSupergroup", "@extra": nil, period: nil, member_count: nil, message_count: nil, viewer_count: nil, sender_count: nil, member_count_graph: nil, join_graph: nil, join_by_source_graph: nil, language_graph: nil, message_content_graph: nil, action_graph: nil, day_graph: nil, week_graph: nil, top_senders: nil, top_administrators: nil, top_inviters: nil
end
defmodule TopChatCategoryInlineBots do
  @moduledoc  """
  A category containing frequently used chats with inline bots sorted by their usage in inline mode.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_inline_bots.html).
  """

  defstruct "@type": "topChatCategoryInlineBots", "@extra": nil
end
defmodule SuggestedAction do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_suggested_action.html).
  """

  defstruct "@type": "SuggestedAction", "@extra": nil
end
defmodule TestBytes do
  @moduledoc  """
  A simple object containing a sequence of bytes; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | bytes | Bytes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_bytes.html).
  """

  defstruct "@type": "testBytes", "@extra": nil, value: nil
end
defmodule ChatActionUploadingPhoto do
  @moduledoc  """
  The user is uploading a photo.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | int32 | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_photo.html).
  """

  defstruct "@type": "chatActionUploadingPhoto", "@extra": nil, progress: nil
end
defmodule RtmpUrl do
  @moduledoc  """
  Represents an RTMP url.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | The URL. |
  | stream_key | string | Stream key. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rtmp_url.html).
  """

  defstruct "@type": "rtmpUrl", "@extra": nil, url: nil, stream_key: nil
end
defmodule PushMessageContentMessageForwards do
  @moduledoc  """
  A forwarded messages.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Number of forwarded messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_message_forwards.html).
  """

  defstruct "@type": "pushMessageContentMessageForwards", "@extra": nil, total_count: nil
end
defmodule PageBlockVoiceNote do
  @moduledoc  """
  A voice note.

  | Name | Type | Description |
  |------|------| ------------|
  | voice_note | voiceNote | Voice note; may be null. |
  | caption | pageBlockCaption | Voice note caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_voice_note.html).
  """

  defstruct "@type": "pageBlockVoiceNote", "@extra": nil, voice_note: nil, caption: nil
end
defmodule PageBlockKicker do
  @moduledoc  """
  A kicker.

  | Name | Type | Description |
  |------|------| ------------|
  | kicker | RichText | Kicker. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_kicker.html).
  """

  defstruct "@type": "pageBlockKicker", "@extra": nil, kicker: nil
end
defmodule UserTypeUnknown do
  @moduledoc  """
  No information on the user besides the user identifier is available, yet this user has not been deleted. This object is extremely rare and must be handled like a deleted user. It is not possible to perform any actions on users of this type.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_unknown.html).
  """

  defstruct "@type": "userTypeUnknown", "@extra": nil
end
defmodule SupergroupMembersFilterSearch do
  @moduledoc  """
  Used to search for supergroup or channel members via a (string) query.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_search.html).
  """

  defstruct "@type": "supergroupMembersFilterSearch", "@extra": nil, query: nil
end
defmodule InternalLinkTypeAttachmentMenuBot do
  @moduledoc  """
  The link is a link to an attachment menu bot to be opened in the specified or a chosen chat. Process given target_chat to open the chat. Then call searchPublicChat with the given bot username, check that the user is a bot and can be added to attachment menu. Then use getAttachmentMenuBot to receive information about the bot. If the bot isn't added to attachment menu, then user needs to confirm adding the bot to attachment menu. If user confirms adding, then use toggleBotIsAddedToAttachmentMenu to add it. If the attachment menu bot can't be used in the opened chat, show an error to the user. If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL.

  | Name | Type | Description |
  |------|------| ------------|
  | target_chat | TargetChat | Target chat to be opened. |
  | bot_username | string | Username of the bot. |
  | url | string | URL to be passed to <a class="el" href="classtd_1_1td__api_1_1open_web_app.html">openWebApp</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_attachment_menu_bot.html).
  """

  defstruct "@type": "internalLinkTypeAttachmentMenuBot", "@extra": nil, target_chat: nil, bot_username: nil, url: nil
end
defmodule PaymentProviderOther do
  @moduledoc  """
  Some other payment provider, for which a web payment form must be shown.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | Payment form URL. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_provider_other.html).
  """

  defstruct "@type": "paymentProviderOther", "@extra": nil, url: nil
end
defmodule User do
  @moduledoc  """
  Represents a user.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int53 | User identifier. |
  | first_name | string | First name of the user. |
  | last_name | string | Last name of the user. |
  | username | string | Username of the user. |
  | phone_number | string | Phone number of the user. |
  | status | UserStatus | Current online status of the user. |
  | profile_photo | profilePhoto | Profile photo of the user; may be null. |
  | is_contact | bool | The user is a contact of the current user. |
  | is_mutual_contact | bool | The user is a contact of the current user and the current user is a contact of the user. |
  | is_verified | bool | True, if the user is verified. |
  | is_premium | bool | True, if the user is a Telegram Premium user. |
  | is_support | bool | True, if the user is Telegram support account. |
  | restriction_reason | string | If non-empty, it contains a human-readable description of the reason why access to this user must be restricted. |
  | is_scam | bool | True, if many users reported this user as a scam. |
  | is_fake | bool | True, if many users reported this user as a fake account. |
  | have_access | bool | If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method except GetUser. |
  | type | UserType | Type of the user. |
  | language_code | string | IETF language tag of the user's language; only available to bots. |
  | added_to_attachment_menu | bool | True, if the user added the current bot to attachment menu; only available to bots. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user.html).
  """

  defstruct "@type": "user", "@extra": nil, id: nil, first_name: nil, last_name: nil, username: nil, phone_number: nil, status: nil, profile_photo: nil, is_contact: nil, is_mutual_contact: nil, is_verified: nil, is_premium: nil, is_support: nil, restriction_reason: nil, is_scam: nil, is_fake: nil, have_access: nil, type: nil, language_code: nil, added_to_attachment_menu: nil
end
defmodule UpdateChatReplyMarkup do
  @moduledoc  """
  The default chat reply markup was changed. Can occur because new messages with reply markup were received or because an old reply markup was hidden by the user.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | reply_markup_message_id | int53 | Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_reply_markup.html).
  """

  defstruct "@type": "updateChatReplyMarkup", "@extra": nil, chat_id: nil, reply_markup_message_id: nil
end
defmodule ChatEventInviteLinkEdited do
  @moduledoc  """
  A chat invite link was edited.

  | Name | Type | Description |
  |------|------| ------------|
  | old_invite_link | chatInviteLink | Previous information about the invite link. |
  | new_invite_link | chatInviteLink | New information about the invite link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_invite_link_edited.html).
  """

  defstruct "@type": "chatEventInviteLinkEdited", "@extra": nil, old_invite_link: nil, new_invite_link: nil
end
defmodule UpdateChatMember do
  @moduledoc  """
  User rights changed in a chat; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | actor_user_id | int53 | Identifier of the user, changing the rights. |
  | date | int32 | Point in time (Unix timestamp) when the user rights was changed. |
  | invite_link | chatInviteLink | If user has joined the chat using an invite link, the invite link; may be null. |
  | old_chat_member | chatMember | Previous chat member. |
  | new_chat_member | chatMember | New chat member. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_member.html).
  """

  defstruct "@type": "updateChatMember", "@extra": nil, chat_id: nil, actor_user_id: nil, date: nil, invite_link: nil, old_chat_member: nil, new_chat_member: nil
end
defmodule CallProblemEcho do
  @moduledoc  """
  The user heard their own voice.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_echo.html).
  """

  defstruct "@type": "callProblemEcho", "@extra": nil
end
defmodule InternalLinkTypePremiumFeatures do
  @moduledoc  """
  The link is a link to the Premium features screen of the applcation from which the user can subscribe to Telegram Premium. Call getPremiumFeatures with the given referrer to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | referrer | string | Referrer specified in the link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_premium_features.html).
  """

  defstruct "@type": "internalLinkTypePremiumFeatures", "@extra": nil, referrer: nil
end
defmodule ChatAction do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_action.html).
  """

  defstruct "@type": "ChatAction", "@extra": nil
end
defmodule ThumbnailFormat do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_thumbnail_format.html).
  """

  defstruct "@type": "ThumbnailFormat", "@extra": nil
end
defmodule InlineQueryResultAudio do
  @moduledoc  """
  Represents an audio file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | audio | audio | Audio file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_audio.html).
  """

  defstruct "@type": "inlineQueryResultAudio", "@extra": nil, id: nil, audio: nil
end
defmodule InputBackground do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_background.html).
  """

  defstruct "@type": "InputBackground", "@extra": nil
end
defmodule InputInlineQueryResultLocation do
  @moduledoc  """
  Represents a point on the map.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | location | location | Location result. |
  | live_period | int32 | Amount of time relative to the message sent time until the location can be updated, in seconds. |
  | title | string | Title of the result. |
  | thumbnail_url | string | URL of the result thumbnail, if it exists. |
  | thumbnail_width | int32 | Thumbnail width, if known. |
  | thumbnail_height | int32 | Thumbnail height, if known. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_location.html).
  """

  defstruct "@type": "inputInlineQueryResultLocation", "@extra": nil, id: nil, location: nil, live_period: nil, title: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule NotificationGroup do
  @moduledoc  """
  Describes a group of notifications.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Unique persistent auto-incremented from 1 identifier of the notification group. |
  | type | NotificationGroupType | Type of the group. |
  | chat_id | int53 | Identifier of a chat to which all notifications in the group belong. |
  | total_count | int32 | Total number of active notifications in the group. |
  | notifications | notification | The list of active notifications. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group.html).
  """

  defstruct "@type": "notificationGroup", "@extra": nil, id: nil, type: nil, chat_id: nil, total_count: nil, notifications: nil
end
defmodule KeyboardButtonType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_keyboard_button_type.html).
  """

  defstruct "@type": "KeyboardButtonType", "@extra": nil
end
defmodule KeyboardButtonTypeText do
  @moduledoc  """
  A simple button, with text that must be sent when the button is pressed.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_text.html).
  """

  defstruct "@type": "keyboardButtonTypeText", "@extra": nil
end
defmodule UpdateFavoriteStickers do
  @moduledoc  """
  The list of favorite stickers was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker_ids | int32 | The new list of file identifiers of favorite stickers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_favorite_stickers.html).
  """

  defstruct "@type": "updateFavoriteStickers", "@extra": nil, sticker_ids: nil
end
defmodule ChatEventMemberJoined do
  @moduledoc  """
  A new member joined the chat.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_joined.html).
  """

  defstruct "@type": "chatEventMemberJoined", "@extra": nil
end
defmodule MessageSendOptions do
  @moduledoc  """
  Options to be used when a message is sent.

  | Name | Type | Description |
  |------|------| ------------|
  | disable_notification | bool | Pass true to disable notification for the message. |
  | from_background | bool | Pass true if the message is sent from the background. |
  | protect_content | bool | Pass true if the content of the message must be protected from forwarding and saving; for bots only. |
  | scheduling_state | MessageSchedulingState | Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_send_options.html).
  """

  defstruct "@type": "messageSendOptions", "@extra": nil, disable_notification: nil, from_background: nil, protect_content: nil, scheduling_state: nil
end
defmodule UpdateChatFilters do
  @moduledoc  """
  The list of chat filters or a chat filter has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_filters | chatFilterInfo | The new list of chat filters. |
  | main_chat_list_position | int32 | Position of the main chat list among chat filters, 0-based. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_filters.html).
  """

  defstruct "@type": "updateChatFilters", "@extra": nil, chat_filters: nil, main_chat_list_position: nil
end
defmodule SuggestedActionCheckPhoneNumber do
  @moduledoc  """
  Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_check_phone_number.html).
  """

  defstruct "@type": "suggestedActionCheckPhoneNumber", "@extra": nil
end
defmodule UpdateGroupCall do
  @moduledoc  """
  Information about a group call was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | group_call | groupCall | New data about a group call. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_group_call.html).
  """

  defstruct "@type": "updateGroupCall", "@extra": nil, group_call: nil
end
defmodule UpdateChatIsMarkedAsUnread do
  @moduledoc  """
  A chat was marked as unread or was read.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | is_marked_as_unread | bool | New value of is_marked_as_unread. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_is_marked_as_unread.html).
  """

  defstruct "@type": "updateChatIsMarkedAsUnread", "@extra": nil, chat_id: nil, is_marked_as_unread: nil
end
defmodule MaskPointForehead do
  @moduledoc  """
  The mask is placed relatively to the forehead.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_forehead.html).
  """

  defstruct "@type": "maskPointForehead", "@extra": nil
end
defmodule AuthenticationCodeTypeSms do
  @moduledoc  """
  An authentication code is delivered via an SMS message to the specified phone number.

  | Name | Type | Description |
  |------|------| ------------|
  | length | int32 | Length of the code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_sms.html).
  """

  defstruct "@type": "authenticationCodeTypeSms", "@extra": nil, length: nil
end
defmodule UpdateUserFullInfo do
  @moduledoc  """
  Some data in userFullInfo has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier. |
  | user_full_info | userFullInfo | New full information about the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_full_info.html).
  """

  defstruct "@type": "updateUserFullInfo", "@extra": nil, user_id: nil, user_full_info: nil
end
defmodule SearchMessagesFilterEmpty do
  @moduledoc  """
  Returns all found messages, no filter is applied.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_empty.html).
  """

  defstruct "@type": "searchMessagesFilterEmpty", "@extra": nil
end
defmodule PremiumSourceLimitExceeded do
  @moduledoc  """
  A limit was exceeded.

  | Name | Type | Description |
  |------|------| ------------|
  | limit_type | PremiumLimitType | Type of the exceeded limit. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_source_limit_exceeded.html).
  """

  defstruct "@type": "premiumSourceLimitExceeded", "@extra": nil, limit_type: nil
end
defmodule OrderInfo do
  @moduledoc  """
  Order information.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Name of the user. |
  | phone_number | string | Phone number of the user. |
  | email_address | string | Email address of the user. |
  | shipping_address | address | Shipping address for this order; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1order_info.html).
  """

  defstruct "@type": "orderInfo", "@extra": nil, name: nil, phone_number: nil, email_address: nil, shipping_address: nil
end
defmodule InputPassportElementBankStatement do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's bank statement.

  | Name | Type | Description |
  |------|------| ------------|
  | bank_statement | inputPersonalDocument | The bank statement to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_bank_statement.html).
  """

  defstruct "@type": "inputPassportElementBankStatement", "@extra": nil, bank_statement: nil
end
defmodule DeviceTokenWindowsPush do
  @moduledoc  """
  A token for Windows Push Notification Services.

  | Name | Type | Description |
  |------|------| ------------|
  | access_token | string | The access token that will be used to send notifications; may be empty to deregister a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_windows_push.html).
  """

  defstruct "@type": "deviceTokenWindowsPush", "@extra": nil, access_token: nil
end
defmodule ResetPasswordResultOk do
  @moduledoc  """
  The password was reset.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reset_password_result_ok.html).
  """

  defstruct "@type": "resetPasswordResultOk", "@extra": nil
end
defmodule ConnectedWebsites do
  @moduledoc  """
  Contains a list of websites the current user is logged in with Telegram.

  | Name | Type | Description |
  |------|------| ------------|
  | websites | connectedWebsite | List of connected websites. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connected_websites.html).
  """

  defstruct "@type": "connectedWebsites", "@extra": nil, websites: nil
end
defmodule PassportElementBankStatement do
  @moduledoc  """
  A Telegram Passport element containing the user's bank statement.

  | Name | Type | Description |
  |------|------| ------------|
  | bank_statement | personalDocument | Bank statement. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_bank_statement.html).
  """

  defstruct "@type": "passportElementBankStatement", "@extra": nil, bank_statement: nil
end
defmodule CheckStickerSetNameResult do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_check_sticker_set_name_result.html).
  """

  defstruct "@type": "CheckStickerSetNameResult", "@extra": nil
end
defmodule ConnectionStateWaitingForNetwork do
  @moduledoc  """
  Currently waiting for the network to become available. Use setNetworkType to change the available network type.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_waiting_for_network.html).
  """

  defstruct "@type": "connectionStateWaitingForNetwork", "@extra": nil
end
defmodule NetworkTypeWiFi do
  @moduledoc  """
  A Wi-Fi network.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_wi_fi.html).
  """

  defstruct "@type": "networkTypeWiFi", "@extra": nil
end
defmodule ChatActionBarSharePhoneNumber do
  @moduledoc  """
  The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_share_phone_number.html).
  """

  defstruct "@type": "chatActionBarSharePhoneNumber", "@extra": nil
end
defmodule MessageThreadInfo do
  @moduledoc  """
  Contains information about a message thread.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Identifier of the chat to which the message thread belongs. |
  | message_thread_id | int53 | Message thread identifier, unique within the chat. |
  | reply_info | messageReplyInfo | Information about the message thread. |
  | unread_message_count | int32 | Approximate number of unread messages in the message thread. |
  | messages | message | The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id). |
  | draft_message | draftMessage | A draft of a message in the message thread; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_thread_info.html).
  """

  defstruct "@type": "messageThreadInfo", "@extra": nil, chat_id: nil, message_thread_id: nil, reply_info: nil, unread_message_count: nil, messages: nil, draft_message: nil
end
defmodule LoginUrlInfo do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_login_url_info.html).
  """

  defstruct "@type": "LoginUrlInfo", "@extra": nil
end
defmodule TopChatCategory do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_top_chat_category.html).
  """

  defstruct "@type": "TopChatCategory", "@extra": nil
end
defmodule SessionTypeXbox do
  @moduledoc  """
  The session is running on an Xbox console.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_xbox.html).
  """

  defstruct "@type": "sessionTypeXbox", "@extra": nil
end
defmodule ChatMembersFilterAdministrators do
  @moduledoc  """
  Returns the owner and administrators.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_administrators.html).
  """

  defstruct "@type": "chatMembersFilterAdministrators", "@extra": nil
end
defmodule PageBlockCover do
  @moduledoc  """
  A page cover.

  | Name | Type | Description |
  |------|------| ------------|
  | cover | PageBlock | Cover. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_cover.html).
  """

  defstruct "@type": "pageBlockCover", "@extra": nil, cover: nil
end
defmodule PageBlockVideo do
  @moduledoc  """
  A video.

  | Name | Type | Description |
  |------|------| ------------|
  | video | video | Video file; may be null. |
  | caption | pageBlockCaption | Video caption. |
  | need_autoplay | bool | True, if the video must be played automatically. |
  | is_looped | bool | True, if the video must be looped. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_video.html).
  """

  defstruct "@type": "pageBlockVideo", "@extra": nil, video: nil, caption: nil, need_autoplay: nil, is_looped: nil
end
defmodule MessageScreenshotTaken do
  @moduledoc  """
  A screenshot of a message in the chat has been taken.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_screenshot_taken.html).
  """

  defstruct "@type": "messageScreenshotTaken", "@extra": nil
end
defmodule MaskPointMouth do
  @moduledoc  """
  The mask is placed relatively to the mouth.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_mouth.html).
  """

  defstruct "@type": "maskPointMouth", "@extra": nil
end
defmodule ChatEventPollStopped do
  @moduledoc  """
  A poll in a message was stopped.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | The message with the poll. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_poll_stopped.html).
  """

  defstruct "@type": "chatEventPollStopped", "@extra": nil, message: nil
end
defmodule UpdateFileDownloads do
  @moduledoc  """
  The state of the file download list has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | total_size | int53 | Total size of files in the file download list, in bytes. |
  | total_count | int32 | Total number of files in the file download list. |
  | downloaded_size | int53 | Total downloaded size of files in the file download list, in bytes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_downloads.html).
  """

  defstruct "@type": "updateFileDownloads", "@extra": nil, total_size: nil, total_count: nil, downloaded_size: nil
end
defmodule LanguagePackStrings do
  @moduledoc  """
  Contains a list of language pack strings.

  | Name | Type | Description |
  |------|------| ------------|
  | strings | languagePackString | A list of language pack strings. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_strings.html).
  """

  defstruct "@type": "languagePackStrings", "@extra": nil, strings: nil
end
defmodule CallbackQueryPayloadDataWithPassword do
  @moduledoc  """
  The payload for a callback button requiring password.

  | Name | Type | Description |
  |------|------| ------------|
  | password | string | The password for the current user. |
  | data | bytes | Data that was attached to the callback button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_payload_data_with_password.html).
  """

  defstruct "@type": "callbackQueryPayloadDataWithPassword", "@extra": nil, password: nil, data: nil
end
defmodule SupergroupMembersFilterRecent do
  @moduledoc  """
  Returns recently active users in reverse chronological order.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_recent.html).
  """

  defstruct "@type": "supergroupMembersFilterRecent", "@extra": nil
end
defmodule CheckChatUsernameResultPublicGroupsUnavailable do
  @moduledoc  """
  The user can't be a member of a public supergroup.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_public_groups_unavailable.html).
  """

  defstruct "@type": "checkChatUsernameResultPublicGroupsUnavailable", "@extra": nil
end
defmodule PushMessageContentScreenshotTaken do
  @moduledoc  """
  A screenshot of a message in the chat has been taken.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_screenshot_taken.html).
  """

  defstruct "@type": "pushMessageContentScreenshotTaken", "@extra": nil
end
defmodule ChatSourcePublicServiceAnnouncement do
  @moduledoc  """
  The chat contains a public service announcement.

  | Name | Type | Description |
  |------|------| ------------|
  | type | string | The type of the announcement. |
  | text | string | The text of the announcement. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_source_public_service_announcement.html).
  """

  defstruct "@type": "chatSourcePublicServiceAnnouncement", "@extra": nil, type: nil, text: nil
end
defmodule SessionTypeIpad do
  @moduledoc  """
  The session is running on an iPad device.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_ipad.html).
  """

  defstruct "@type": "sessionTypeIpad", "@extra": nil
end
defmodule CallbackQueryPayloadGame do
  @moduledoc  """
  The payload for a game callback button.

  | Name | Type | Description |
  |------|------| ------------|
  | game_short_name | string | A short name of the game that was attached to the callback button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_payload_game.html).
  """

  defstruct "@type": "callbackQueryPayloadGame", "@extra": nil, game_short_name: nil
end
defmodule PageBlockChatLink do
  @moduledoc  """
  A link to a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Chat title. |
  | photo | chatPhotoInfo | Chat photo; may be null. |
  | username | string | Chat username by which all other information about the chat can be resolved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_chat_link.html).
  """

  defstruct "@type": "pageBlockChatLink", "@extra": nil, title: nil, photo: nil, username: nil
end
defmodule BankCardActionOpenUrl do
  @moduledoc  """
  Describes an action associated with a bank card number.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Action text. |
  | url | string | The URL to be opened. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bank_card_action_open_url.html).
  """

  defstruct "@type": "bankCardActionOpenUrl", "@extra": nil, text: nil, url: nil
end
defmodule UserStatus do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_status.html).
  """

  defstruct "@type": "UserStatus", "@extra": nil
end
defmodule MessageSchedulingState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_scheduling_state.html).
  """

  defstruct "@type": "MessageSchedulingState", "@extra": nil
end
defmodule InternalLinkTypeSettings do
  @moduledoc  """
  The link is a link to application settings.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_settings.html).
  """

  defstruct "@type": "internalLinkTypeSettings", "@extra": nil
end
defmodule GameHighScores do
  @moduledoc  """
  Contains a list of game high scores.

  | Name | Type | Description |
  |------|------| ------------|
  | scores | gameHighScore | A list of game high scores. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1game_high_scores.html).
  """

  defstruct "@type": "gameHighScores", "@extra": nil, scores: nil
end
defmodule UpdateSuggestedActions do
  @moduledoc  """
  The list of suggested to the user actions has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | added_actions | SuggestedAction | Added suggested actions. |
  | removed_actions | SuggestedAction | Removed suggested actions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_suggested_actions.html).
  """

  defstruct "@type": "updateSuggestedActions", "@extra": nil, added_actions: nil, removed_actions: nil
end
defmodule PremiumFeatureUniqueStickers do
  @moduledoc  """
  Allowed to use premium stickers with unique effects.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_unique_stickers.html).
  """

  defstruct "@type": "premiumFeatureUniqueStickers", "@extra": nil
end
defmodule RichTextEmailAddress do
  @moduledoc  """
  A rich text email link.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |
  | email_address | string | Email address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_email_address.html).
  """

  defstruct "@type": "richTextEmailAddress", "@extra": nil, text: nil, email_address: nil
end
defmodule ChatTheme do
  @moduledoc  """
  Describes a chat theme.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Theme name. |
  | light_settings | themeSettings | Theme settings for a light chat theme. |
  | dark_settings | themeSettings | Theme settings for a dark chat theme. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_theme.html).
  """

  defstruct "@type": "chatTheme", "@extra": nil, name: nil, light_settings: nil, dark_settings: nil
end
defmodule SupergroupMembersFilterContacts do
  @moduledoc  """
  Returns contacts of the user, which are members of the supergroup or channel.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_contacts.html).
  """

  defstruct "@type": "supergroupMembersFilterContacts", "@extra": nil, query: nil
end
defmodule ChatTypeSecret do
  @moduledoc  """
  A secret chat with a user.

  | Name | Type | Description |
  |------|------| ------------|
  | secret_chat_id | int32 | Secret chat identifier. |
  | user_id | int53 | User identifier of the secret chat peer. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_secret.html).
  """

  defstruct "@type": "chatTypeSecret", "@extra": nil, secret_chat_id: nil, user_id: nil
end
defmodule CallDiscardReasonHungUp do
  @moduledoc  """
  The call was ended because one of the parties hung up.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_hung_up.html).
  """

  defstruct "@type": "callDiscardReasonHungUp", "@extra": nil
end
defmodule PremiumSourceSettings do
  @moduledoc  """
  A user opened the Premium features screen from settings.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_source_settings.html).
  """

  defstruct "@type": "premiumSourceSettings", "@extra": nil
end
defmodule InputPassportElementRentalAgreement do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's rental agreement.

  | Name | Type | Description |
  |------|------| ------------|
  | rental_agreement | inputPersonalDocument | The rental agreement to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_rental_agreement.html).
  """

  defstruct "@type": "inputPassportElementRentalAgreement", "@extra": nil, rental_agreement: nil
end
defmodule ChatMemberStatusAdministrator do
  @moduledoc  """
  The user is a member of the chat and has some additional privileges. In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged members, and manage video chats. In supergroups and channels, there are more detailed options for administrator privileges.

  | Name | Type | Description |
  |------|------| ------------|
  | custom_title | string | A custom title of the administrator; 0-16 characters without emojis; applicable to supergroups only. |
  | can_be_edited | bool | True, if the current user can edit the administrator privileges for the called user. |
  | rights | chatAdministratorRights | Rights of the administrator. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_administrator.html).
  """

  defstruct "@type": "chatMemberStatusAdministrator", "@extra": nil, custom_title: nil, can_be_edited: nil, rights: nil
end
defmodule AuthenticationCodeType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_authentication_code_type.html).
  """

  defstruct "@type": "AuthenticationCodeType", "@extra": nil
end
defmodule UpdateChatDefaultDisableNotification do
  @moduledoc  """
  The value of the default disable_notification parameter, used when a message is sent to the chat, was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | default_disable_notification | bool | The new default_disable_notification value. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_default_disable_notification.html).
  """

  defstruct "@type": "updateChatDefaultDisableNotification", "@extra": nil, chat_id: nil, default_disable_notification: nil
end
defmodule PageBlockSubtitle do
  @moduledoc  """
  The subtitle of a page.

  | Name | Type | Description |
  |------|------| ------------|
  | subtitle | RichText | Subtitle. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_subtitle.html).
  """

  defstruct "@type": "pageBlockSubtitle", "@extra": nil, subtitle: nil
end
defmodule CallStatePending do
  @moduledoc  """
  The call is pending, waiting to be accepted by a user.

  | Name | Type | Description |
  |------|------| ------------|
  | is_created | bool | True, if the call has already been created by the server. |
  | is_received | bool | True, if the call has already been received by the other party. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_pending.html).
  """

  defstruct "@type": "callStatePending", "@extra": nil, is_created: nil, is_received: nil
end
defmodule InternalLinkTypeUnknownDeepLink do
  @moduledoc  """
  The link is an unknown tg: link. Call getDeepLinkInfo to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | link | string | Link to be passed to <a class="el" href="classtd_1_1td__api_1_1get_deep_link_info.html">getDeepLinkInfo</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_unknown_deep_link.html).
  """

  defstruct "@type": "internalLinkTypeUnknownDeepLink", "@extra": nil, link: nil
end
defmodule ChatReportReasonFake do
  @moduledoc  """
  The chat represents a fake account.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_fake.html).
  """

  defstruct "@type": "chatReportReasonFake", "@extra": nil
end
defmodule TdlibParameters do
  @moduledoc  """
  Contains parameters for TDLib initialization.

  | Name | Type | Description |
  |------|------| ------------|
  | use_test_dc | bool | If set to true, the Telegram test environment will be used instead of the production environment. |
  | database_directory | string | The path to the directory for the persistent database; if empty, the current working directory will be used. |
  | files_directory | string | The path to the directory for storing files; if empty, database_directory will be used. |
  | use_file_database | bool | If set to true, information about downloaded and uploaded files will be saved between application restarts. |
  | use_chat_info_database | bool | If set to true, the library will maintain a cache of users, basic groups, supergroups, channels and secret chats. Implies use_file_database. |
  | use_message_database | bool | If set to true, the library will maintain a cache of chats and messages. Implies use_chat_info_database. |
  | use_secret_chats | bool | If set to true, support for secret chats will be enabled. |
  | api_id | int32 | Application identifier for Telegram API access, which can be obtained at <a href="https://my.telegram.org">https://my.telegram.org</a>. |
  | api_hash | string | Application identifier hash for Telegram API access, which can be obtained at <a href="https://my.telegram.org">https://my.telegram.org</a>. |
  | system_language_code | string | IETF language tag of the user's operating system language; must be non-empty. |
  | device_model | string | Model of the device the application is being run on; must be non-empty. |
  | system_version | string | Version of the operating system the application is being run on. If empty, the version is automatically detected by TDLib. |
  | application_version | string | Application version; must be non-empty. |
  | enable_storage_optimizer | bool | If set to true, old files will automatically be deleted. |
  | ignore_file_names | bool | If set to true, original file names will be ignored. Otherwise, downloaded files will be saved under names as close as possible to the original name. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1tdlib_parameters.html).
  """

  defstruct "@type": "tdlibParameters", "@extra": nil, use_test_dc: nil, database_directory: nil, files_directory: nil, use_file_database: nil, use_chat_info_database: nil, use_message_database: nil, use_secret_chats: nil, api_id: nil, api_hash: nil, system_language_code: nil, device_model: nil, system_version: nil, application_version: nil, enable_storage_optimizer: nil, ignore_file_names: nil
end
defmodule ChatEventTitleChanged do
  @moduledoc  """
  The chat title was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_title | string | Previous chat title. |
  | new_title | string | New chat title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_title_changed.html).
  """

  defstruct "@type": "chatEventTitleChanged", "@extra": nil, old_title: nil, new_title: nil
end
defmodule ChatActionTyping do
  @moduledoc  """
  The user is typing a message.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_typing.html).
  """

  defstruct "@type": "chatActionTyping", "@extra": nil
end
defmodule PageBlockHeader do
  @moduledoc  """
  A header.

  | Name | Type | Description |
  |------|------| ------------|
  | header | RichText | Header. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_header.html).
  """

  defstruct "@type": "pageBlockHeader", "@extra": nil, header: nil
end
defmodule UpdateChatPosition do
  @moduledoc  """
  The position of a chat in a chat list has changed. Instead of this update updateChatLastMessage or updateChatDraftMessage might be sent.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | position | chatPosition | New chat position. If new order is 0, then the chat needs to be removed from the list. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_position.html).
  """

  defstruct "@type": "updateChatPosition", "@extra": nil, chat_id: nil, position: nil
end
defmodule InternalLinkTypeUnsupportedProxy do
  @moduledoc  """
  The link is a link to an unsupported proxy. An alert can be shown to the user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_unsupported_proxy.html).
  """

  defstruct "@type": "internalLinkTypeUnsupportedProxy", "@extra": nil
end
defmodule InternalLinkTypeBotStart do
  @moduledoc  """
  The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot, and then call sendBotStartMessage with the given start parameter after the button is pressed.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_username | string | Username of the bot. |
  | start_parameter | string | The parameter to be passed to <a class="el" href="classtd_1_1td__api_1_1send_bot_start_message.html">sendBotStartMessage</a>. |
  | autostart | bool | True, if <a class="el" href="classtd_1_1td__api_1_1send_bot_start_message.html">sendBotStartMessage</a> must be called automatically without showing the START button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_bot_start.html).
  """

  defstruct "@type": "internalLinkTypeBotStart", "@extra": nil, bot_username: nil, start_parameter: nil, autostart: nil
end
defmodule BasicGroup do
  @moduledoc  """
  Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users).

  | Name | Type | Description |
  |------|------| ------------|
  | id | int53 | Group identifier. |
  | member_count | int32 | Number of members in the group. |
  | status | ChatMemberStatus | Status of the current user in the group. |
  | is_active | bool | True, if the group is active. |
  | upgraded_to_supergroup_id | int53 | Identifier of the supergroup to which this group was upgraded; 0 if none. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1basic_group.html).
  """

  defstruct "@type": "basicGroup", "@extra": nil, id: nil, member_count: nil, status: nil, is_active: nil, upgraded_to_supergroup_id: nil
end
defmodule MessageFileTypeUnknown do
  @moduledoc  """
  The messages was exported from a chat of unknown type.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_file_type_unknown.html).
  """

  defstruct "@type": "messageFileTypeUnknown", "@extra": nil
end
defmodule Messages do
  @moduledoc  """
  Contains a list of messages.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of messages found. |
  | messages | message | List of messages; messages may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1messages.html).
  """

  defstruct "@type": "messages", "@extra": nil, total_count: nil, messages: nil
end
defmodule ChatInviteLinkCount do
  @moduledoc  """
  Describes a chat administrator with a number of active and revoked chat invite links.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | Administrator's user identifier. |
  | invite_link_count | int32 | Number of active invite links. |
  | revoked_invite_link_count | int32 | Number of revoked invite links. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_count.html).
  """

  defstruct "@type": "chatInviteLinkCount", "@extra": nil, user_id: nil, invite_link_count: nil, revoked_invite_link_count: nil
end
defmodule AuthorizationStateWaitCode do
  @moduledoc  """
  TDLib needs the user's authentication code to authorize.

  | Name | Type | Description |
  |------|------| ------------|
  | code_info | authenticationCodeInfo | Information about the authorization code that was sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_code.html).
  """

  defstruct "@type": "authorizationStateWaitCode", "@extra": nil, code_info: nil
end
defmodule PremiumLimitTypeCaptionLength do
  @moduledoc  """
  The maximum length of sent media caption.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_caption_length.html).
  """

  defstruct "@type": "premiumLimitTypeCaptionLength", "@extra": nil
end
defmodule BackgroundFillGradient do
  @moduledoc  """
  Describes a gradient fill of a background.

  | Name | Type | Description |
  |------|------| ------------|
  | top_color | int32 | A top color of the background in the RGB24 format. |
  | bottom_color | int32 | A bottom color of the background in the RGB24 format. |
  | rotation_angle | int32 | Clockwise rotation angle of the gradient, in degrees; 0-359. Must be always divisible by 45. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_fill_gradient.html).
  """

  defstruct "@type": "backgroundFillGradient", "@extra": nil, top_color: nil, bottom_color: nil, rotation_angle: nil
end
defmodule Animations do
  @moduledoc  """
  Represents a list of animations.

  | Name | Type | Description |
  |------|------| ------------|
  | animations | animation | List of animations. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animations.html).
  """

  defstruct "@type": "animations", "@extra": nil, animations: nil
end
defmodule InputPassportElementErrorSourceReverseSide do
  @moduledoc  """
  The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes.

  | Name | Type | Description |
  |------|------| ------------|
  | file_hash | bytes | Current hash of the file containing the reverse side. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_reverse_side.html).
  """

  defstruct "@type": "inputPassportElementErrorSourceReverseSide", "@extra": nil, file_hash: nil
end
defmodule ChatEventVideoChatEnded do
  @moduledoc  """
  A video chat was ended.

  | Name | Type | Description |
  |------|------| ------------|
  | group_call_id | int32 | Identifier of the video chat. The video chat can be received through the method <a class="el" href="classtd_1_1td__api_1_1get_group_call.html">getGroupCall</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_ended.html).
  """

  defstruct "@type": "chatEventVideoChatEnded", "@extra": nil, group_call_id: nil
end
defmodule MessageDice do
  @moduledoc  """
  A dice message. The dice value is randomly generated by the server.

  | Name | Type | Description |
  |------|------| ------------|
  | initial_state | DiceStickers | The animated stickers with the initial dice animation; may be null if unknown. <a class="el" href="classtd_1_1td__api_1_1update_message_content.html">updateMessageContent</a> will be sent when the sticker became known. |
  | final_state | DiceStickers | The animated stickers with the final dice animation; may be null if unknown. <a class="el" href="classtd_1_1td__api_1_1update_message_content.html">updateMessageContent</a> will be sent when the sticker became known. |
  | emoji | string | Emoji on which the dice throw animation is based. |
  | value | int32 | The dice value. If the value is 0, the dice don't have final state yet. |
  | success_animation_frame_number | int32 | Number of frame after which a success animation like a shower of confetti needs to be shown on <a class="el" href="classtd_1_1td__api_1_1update_message_send_succeeded.html">updateMessageSendSucceeded</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_dice.html).
  """

  defstruct "@type": "messageDice", "@extra": nil, initial_state: nil, final_state: nil, emoji: nil, value: nil, success_animation_frame_number: nil
end
defmodule NetworkStatisticsEntryFile do
  @moduledoc  """
  Contains information about the total amount of data that was used to send and receive files.

  | Name | Type | Description |
  |------|------| ------------|
  | file_type | FileType | Type of the file the data is part of; pass null if the data isn't related to files. |
  | network_type | NetworkType | Type of the network the data was sent through. Call <a class="el" href="classtd_1_1td__api_1_1set_network_type.html">setNetworkType</a> to maintain the actual network type. |
  | sent_bytes | int53 | Total number of bytes sent. |
  | received_bytes | int53 | Total number of bytes received. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_statistics_entry_file.html).
  """

  defstruct "@type": "networkStatisticsEntryFile", "@extra": nil, file_type: nil, network_type: nil, sent_bytes: nil, received_bytes: nil
end
defmodule UpdateAuthorizationState do
  @moduledoc  """
  The user authorization state has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | authorization_state | AuthorizationState | New authorization state. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_authorization_state.html).
  """

  defstruct "@type": "updateAuthorizationState", "@extra": nil, authorization_state: nil
end
defmodule UpdateMessageInteractionInfo do
  @moduledoc  """
  The information about interactions with a message has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_id | int53 | Message identifier. |
  | interaction_info | messageInteractionInfo | New information about interactions with the message; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_interaction_info.html).
  """

  defstruct "@type": "updateMessageInteractionInfo", "@extra": nil, chat_id: nil, message_id: nil, interaction_info: nil
end
defmodule UserPrivacySettingRule do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_privacy_setting_rule.html).
  """

  defstruct "@type": "UserPrivacySettingRule", "@extra": nil
end
defmodule SessionTypeLinux do
  @moduledoc  """
  The session is running on a Linux device.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_linux.html).
  """

  defstruct "@type": "sessionTypeLinux", "@extra": nil
end
defmodule MessagePaymentSuccessfulBot do
  @moduledoc  """
  A payment has been completed; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | currency | string | Currency for price of the product. |
  | total_amount | int53 | Total price for the product, in the smallest units of the currency. |
  | is_recurring | bool | True, if this is a recurring payment. |
  | is_first_recurring | bool | True, if this is the first recurring payment. |
  | invoice_payload | bytes | Invoice payload. |
  | shipping_option_id | string | Identifier of the shipping option chosen by the user; may be empty if not applicable. |
  | order_info | orderInfo | Information about the order; may be null. |
  | telegram_payment_charge_id | string | Telegram payment identifier. |
  | provider_payment_charge_id | string | Provider payment identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_payment_successful_bot.html).
  """

  defstruct "@type": "messagePaymentSuccessfulBot", "@extra": nil, currency: nil, total_amount: nil, is_recurring: nil, is_first_recurring: nil, invoice_payload: nil, shipping_option_id: nil, order_info: nil, telegram_payment_charge_id: nil, provider_payment_charge_id: nil
end
defmodule UpdateChatAvailableReactions do
  @moduledoc  """
  The chat available reactions were changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | available_reactions | string | The new list of reactions, available in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_available_reactions.html).
  """

  defstruct "@type": "updateChatAvailableReactions", "@extra": nil, chat_id: nil, available_reactions: nil
end
defmodule BotCommandScopeChat do
  @moduledoc  """
  A scope covering all members of a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_chat.html).
  """

  defstruct "@type": "botCommandScopeChat", "@extra": nil, chat_id: nil
end
defmodule UpdateChatThemes do
  @moduledoc  """
  The list of available chat themes has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_themes | chatTheme | The new list of chat themes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_themes.html).
  """

  defstruct "@type": "updateChatThemes", "@extra": nil, chat_themes: nil
end
defmodule MessageCopyOptions do
  @moduledoc  """
  Options to be used when a message content is copied without reference to the original sender. Service messages and messageInvoice can't be copied.

  | Name | Type | Description |
  |------|------| ------------|
  | send_copy | bool | True, if content of the message needs to be copied without reference to the original sender. Always true if the message is forwarded to a secret chat or is local. |
  | replace_caption | bool | True, if media caption of the message copy needs to be replaced. Ignored if send_copy is false. |
  | new_caption | formattedText | New message caption; pass null to copy message without caption. Ignored if replace_caption is false. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_copy_options.html).
  """

  defstruct "@type": "messageCopyOptions", "@extra": nil, send_copy: nil, replace_caption: nil, new_caption: nil
end
defmodule InputSticker do
  @moduledoc  """
  A sticker to be added to a sticker set.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | InputFile | File with the sticker; must fit in a 512x512 square. For WEBP stickers and masks the file must be in PNG format, which will be converted to WEBP server-side. Otherwise, the file must be local or uploaded within a week. See <a href="https://core.telegram.org/animated_stickers">https://core.telegram.org/animated_stickers</a>#technical-requirements for technical requirements. |
  | emojis | string | Emojis corresponding to the sticker. |
  | type | StickerType | Sticker type. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_sticker.html).
  """

  defstruct "@type": "inputSticker", "@extra": nil, sticker: nil, emojis: nil, type: nil
end
defmodule CallProblemDropped do
  @moduledoc  """
  The call ended unexpectedly.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_dropped.html).
  """

  defstruct "@type": "callProblemDropped", "@extra": nil
end
defmodule MessageText do
  @moduledoc  """
  A text message.

  | Name | Type | Description |
  |------|------| ------------|
  | text | formattedText | Text of the message. |
  | web_page | webPage | A preview of the web page that's mentioned in the text; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_text.html).
  """

  defstruct "@type": "messageText", "@extra": nil, text: nil, web_page: nil
end
defmodule GroupCallId do
  @moduledoc  """
  Contains the group call identifier.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Group call identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_id.html).
  """

  defstruct "@type": "groupCallId", "@extra": nil, id: nil
end
defmodule PageBlockHorizontalAlignmentCenter do
  @moduledoc  """
  The content must be center-aligned.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_horizontal_alignment_center.html).
  """

  defstruct "@type": "pageBlockHorizontalAlignmentCenter", "@extra": nil
end
defmodule NotificationGroupTypeSecretChat do
  @moduledoc  """
  A group containing a notification of type notificationTypeNewSecretChat.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group_type_secret_chat.html).
  """

  defstruct "@type": "notificationGroupTypeSecretChat", "@extra": nil
end
defmodule TMeUrlTypeUser do
  @moduledoc  """
  A URL linking to a user.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | Identifier of the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_user.html).
  """

  defstruct "@type": "tMeUrlTypeUser", "@extra": nil, user_id: nil
end
defmodule InputMessageText do
  @moduledoc  """
  A text message.

  | Name | Type | Description |
  |------|------| ------------|
  | text | formattedText | Formatted text to be sent; 1-GetOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Spoiler, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually. |
  | disable_web_page_preview | bool | True, if rich web page previews for URLs in the message text must be disabled. |
  | clear_draft | bool | True, if a chat message draft must be deleted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_text.html).
  """

  defstruct "@type": "inputMessageText", "@extra": nil, text: nil, disable_web_page_preview: nil, clear_draft: nil
end
defmodule PushMessageContentRecurringPayment do
  @moduledoc  """
  A new recurrent payment was made by the current user.

  | Name | Type | Description |
  |------|------| ------------|
  | amount | string | The paid amount. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_recurring_payment.html).
  """

  defstruct "@type": "pushMessageContentRecurringPayment", "@extra": nil, amount: nil
end
defmodule ChatMemberStatusLeft do
  @moduledoc  """
  The user or the chat is not a chat member.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_left.html).
  """

  defstruct "@type": "chatMemberStatusLeft", "@extra": nil
end
defmodule PushMessageContentChatChangePhoto do
  @moduledoc  """
  A chat photo was edited.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_change_photo.html).
  """

  defstruct "@type": "pushMessageContentChatChangePhoto", "@extra": nil
end
defmodule MessageForwardOrigin do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_forward_origin.html).
  """

  defstruct "@type": "MessageForwardOrigin", "@extra": nil
end
defmodule UpdateSecretChat do
  @moduledoc  """
  Some data of a secret chat has changed. This update is guaranteed to come before the secret chat identifier is returned to the application.

  | Name | Type | Description |
  |------|------| ------------|
  | secret_chat | secretChat | New data about the secret chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_secret_chat.html).
  """

  defstruct "@type": "updateSecretChat", "@extra": nil, secret_chat: nil
end
defmodule BackgroundTypePattern do
  @moduledoc  """
  A PNG or TGV (gzipped subset of SVG with MIME type "application/x-tgwallpattern") pattern to be combined with the background fill chosen by the user.

  | Name | Type | Description |
  |------|------| ------------|
  | fill | BackgroundFill | Fill of the background. |
  | intensity | int32 | Intensity of the pattern when it is shown above the filled background; 0-100. |
  | is_inverted | bool | True, if the background fill must be applied only to the pattern itself. All other pixels are black in this case. For dark themes only. |
  | is_moving | bool | True, if the background needs to be slightly moved when device is tilted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_type_pattern.html).
  """

  defstruct "@type": "backgroundTypePattern", "@extra": nil, fill: nil, intensity: nil, is_inverted: nil, is_moving: nil
end
defmodule InputCredentialsNew do
  @moduledoc  """
  Applies if a user enters new credentials on a payment provider website.

  | Name | Type | Description |
  |------|------| ------------|
  | data | string | JSON-encoded data with the credential identifier from the payment provider. |
  | allow_save | bool | True, if the credential identifier can be saved on the server side. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_new.html).
  """

  defstruct "@type": "inputCredentialsNew", "@extra": nil, data: nil, allow_save: nil
end
defmodule MessageChatDeleteMember do
  @moduledoc  """
  A chat member was deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier of the deleted chat member. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_delete_member.html).
  """

  defstruct "@type": "messageChatDeleteMember", "@extra": nil, user_id: nil
end
defmodule MessageForwardOriginChannel do
  @moduledoc  """
  The message was originally a post in a channel.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Identifier of the chat from which the message was originally forwarded. |
  | message_id | int53 | Message identifier of the original message. |
  | author_signature | string | Original post author signature. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forward_origin_channel.html).
  """

  defstruct "@type": "messageForwardOriginChannel", "@extra": nil, chat_id: nil, message_id: nil, author_signature: nil
end
defmodule MessageInviteVideoChatParticipants do
  @moduledoc  """
  A message with information about an invite to a video chat.

  | Name | Type | Description |
  |------|------| ------------|
  | group_call_id | int32 | Identifier of the video chat. The video chat can be received through the method <a class="el" href="classtd_1_1td__api_1_1get_group_call.html">getGroupCall</a>. |
  | user_ids | int53 | Invited user identifiers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_invite_video_chat_participants.html).
  """

  defstruct "@type": "messageInviteVideoChatParticipants", "@extra": nil, group_call_id: nil, user_ids: nil
end
defmodule MaskPoint do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_mask_point.html).
  """

  defstruct "@type": "MaskPoint", "@extra": nil
end
defmodule UserTypeRegular do
  @moduledoc  """
  A regular user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_regular.html).
  """

  defstruct "@type": "userTypeRegular", "@extra": nil
end
defmodule InputMessageInvoice do
  @moduledoc  """
  A message with an invoice; can be used only by bots.

  | Name | Type | Description |
  |------|------| ------------|
  | invoice | invoice | Invoice. |
  | title | string | Product title; 1-32 characters. |
  | description | string | Product description; 0-255 characters. |
  | photo_url | string | Product photo URL; optional. |
  | photo_size | int32 | Product photo size. |
  | photo_width | int32 | Product photo width. |
  | photo_height | int32 | Product photo height. |
  | payload | bytes | The invoice payload. |
  | provider_token | string | Payment provider token. |
  | provider_data | string | JSON-encoded data about the invoice, which will be shared with the payment provider. |
  | start_parameter | string | Unique invoice bot deep link parameter for the generation of this invoice. If empty, it would be possible to pay directly from forwards of the invoice message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_invoice.html).
  """

  defstruct "@type": "inputMessageInvoice", "@extra": nil, invoice: nil, title: nil, description: nil, photo_url: nil, photo_size: nil, photo_width: nil, photo_height: nil, payload: nil, provider_token: nil, provider_data: nil, start_parameter: nil
end
defmodule TextEntityType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_text_entity_type.html).
  """

  defstruct "@type": "TextEntityType", "@extra": nil
end
defmodule Ok do
  @moduledoc  """
  An object of this type is returned on a successful function call for certain functions.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1ok.html).
  """

  defstruct "@type": "ok", "@extra": nil
end
defmodule UserPrivacySettingRuleRestrictUsers do
  @moduledoc  """
  A rule to restrict all specified users from doing something.

  | Name | Type | Description |
  |------|------| ------------|
  | user_ids | int53 | The user identifiers, total number of users in all rules must not exceed 1000. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_users.html).
  """

  defstruct "@type": "userPrivacySettingRuleRestrictUsers", "@extra": nil, user_ids: nil
end
defmodule CallServer do
  @moduledoc  """
  Describes a server for relaying call data.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Server identifier. |
  | ip_address | string | Server IPv4 address. |
  | ipv6_address | string | Server IPv6 address. |
  | port | int32 | Server port number. |
  | type | CallServerType | Server type. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_server.html).
  """

  defstruct "@type": "callServer", "@extra": nil, id: nil, ip_address: nil, ipv6_address: nil, port: nil, type: nil
end
defmodule BotMenuButton do
  @moduledoc  """
  Describes a button to be shown instead of bot commands menu button.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text of the button. |
  | url | string | URL to be passed to <a class="el" href="classtd_1_1td__api_1_1open_web_app.html">openWebApp</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_menu_button.html).
  """

  defstruct "@type": "botMenuButton", "@extra": nil, text: nil, url: nil
end
defmodule InputFileLocal do
  @moduledoc  """
  A file defined by a local path.

  | Name | Type | Description |
  |------|------| ------------|
  | path | string | Local path to the file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_local.html).
  """

  defstruct "@type": "inputFileLocal", "@extra": nil, path: nil
end
defmodule PremiumFeatureProfileBadge do
  @moduledoc  """
  A badge in the user's profile.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_profile_badge.html).
  """

  defstruct "@type": "premiumFeatureProfileBadge", "@extra": nil
end
defmodule ChatEventMessagePinned do
  @moduledoc  """
  A message was pinned.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | Pinned message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_pinned.html).
  """

  defstruct "@type": "chatEventMessagePinned", "@extra": nil, message: nil
end
defmodule FileTypeDocument do
  @moduledoc  """
  The file is a document.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_document.html).
  """

  defstruct "@type": "fileTypeDocument", "@extra": nil
end
defmodule PushMessageContentChatDeleteMember do
  @moduledoc  """
  A chat member was deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | member_name | string | Name of the deleted member. |
  | is_current_user | bool | True, if the current user was deleted from the group. |
  | is_left | bool | True, if the user has left the group themselves. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_delete_member.html).
  """

  defstruct "@type": "pushMessageContentChatDeleteMember", "@extra": nil, member_name: nil, is_current_user: nil, is_left: nil
end
defmodule BotCommandScopeAllChatAdministrators do
  @moduledoc  """
  A scope covering all group and supergroup chat administrators.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_all_chat_administrators.html).
  """

  defstruct "@type": "botCommandScopeAllChatAdministrators", "@extra": nil
end
defmodule InlineKeyboardButtonTypeCallbackWithPassword do
  @moduledoc  """
  A button that asks for password of the current user and then sends a callback query to a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | data | bytes | Data to be sent to the bot via a callback query. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_callback_with_password.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeCallbackWithPassword", "@extra": nil, data: nil
end
defmodule PageBlockHorizontalAlignment do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_page_block_horizontal_alignment.html).
  """

  defstruct "@type": "PageBlockHorizontalAlignment", "@extra": nil
end
defmodule UpdateNewPreCheckoutQuery do
  @moduledoc  """
  A new incoming pre-checkout query; for bots only. Contains full information about a checkout.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Unique query identifier. |
  | sender_user_id | int53 | Identifier of the user who sent the query. |
  | currency | string | Currency for the product price. |
  | total_amount | int53 | Total price for the product, in the smallest units of the currency. |
  | invoice_payload | bytes | Invoice payload. |
  | shipping_option_id | string | Identifier of a shipping option chosen by the user; may be empty if not applicable. |
  | order_info | orderInfo | Information about the order; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_pre_checkout_query.html).
  """

  defstruct "@type": "updateNewPreCheckoutQuery", "@extra": nil, id: nil, sender_user_id: nil, currency: nil, total_amount: nil, invoice_payload: nil, shipping_option_id: nil, order_info: nil
end
defmodule PassportElementTypeIdentityCard do
  @moduledoc  """
  A Telegram Passport element containing the user's identity card.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_identity_card.html).
  """

  defstruct "@type": "passportElementTypeIdentityCard", "@extra": nil
end
defmodule NetworkStatisticsEntryCall do
  @moduledoc  """
  Contains information about the total amount of data that was used for calls.

  | Name | Type | Description |
  |------|------| ------------|
  | network_type | NetworkType | Type of the network the data was sent through. Call <a class="el" href="classtd_1_1td__api_1_1set_network_type.html">setNetworkType</a> to maintain the actual network type. |
  | sent_bytes | int53 | Total number of bytes sent. |
  | received_bytes | int53 | Total number of bytes received. |
  | duration | double | Total call duration, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_statistics_entry_call.html).
  """

  defstruct "@type": "networkStatisticsEntryCall", "@extra": nil, network_type: nil, sent_bytes: nil, received_bytes: nil, duration: nil
end
defmodule StatisticalGraph do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_statistical_graph.html).
  """

  defstruct "@type": "StatisticalGraph", "@extra": nil
end
defmodule UpdateNewMessage do
  @moduledoc  """
  A new message was received; can also be an outgoing message.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | The new message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_message.html).
  """

  defstruct "@type": "updateNewMessage", "@extra": nil, message: nil
end
defmodule ConnectionStateReady do
  @moduledoc  """
  There is a working connection to the Telegram servers.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_ready.html).
  """

  defstruct "@type": "connectionStateReady", "@extra": nil
end
defmodule UpdateChatPermissions do
  @moduledoc  """
  Chat permissions was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | permissions | chatPermissions | The new chat permissions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_permissions.html).
  """

  defstruct "@type": "updateChatPermissions", "@extra": nil, chat_id: nil, permissions: nil
end
defmodule InlineQueryResultDocument do
  @moduledoc  """
  Represents a document.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | document | document | Document. |
  | title | string | Document title. |
  | description | string | Document description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_document.html).
  """

  defstruct "@type": "inlineQueryResultDocument", "@extra": nil, id: nil, document: nil, title: nil, description: nil
end
defmodule PublicChatType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_public_chat_type.html).
  """

  defstruct "@type": "PublicChatType", "@extra": nil
end
defmodule UserStatusRecently do
  @moduledoc  """
  The user was online recently.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_recently.html).
  """

  defstruct "@type": "userStatusRecently", "@extra": nil
end
defmodule BankCardInfo do
  @moduledoc  """
  Information about a bank card.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the bank card description. |
  | actions | bankCardActionOpenUrl | Actions that can be done with the bank card number. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bank_card_info.html).
  """

  defstruct "@type": "bankCardInfo", "@extra": nil, title: nil, actions: nil
end
defmodule InlineKeyboardButtonTypeWebApp do
  @moduledoc  """
  A button that opens a Web App by calling openWebApp.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | An HTTP URL to pass to <a class="el" href="classtd_1_1td__api_1_1open_web_app.html">openWebApp</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_web_app.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeWebApp", "@extra": nil, url: nil
end
defmodule TopChatCategoryUsers do
  @moduledoc  """
  A category containing frequently used private chats with non-bot users.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_users.html).
  """

  defstruct "@type": "topChatCategoryUsers", "@extra": nil
end
defmodule PageBlockDivider do
  @moduledoc  """
  An empty block separating a page.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_divider.html).
  """

  defstruct "@type": "pageBlockDivider", "@extra": nil
end
defmodule PremiumLimitTypeSavedAnimationCount do
  @moduledoc  """
  The maximum number of saved animations.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_saved_animation_count.html).
  """

  defstruct "@type": "premiumLimitTypeSavedAnimationCount", "@extra": nil
end
defmodule TextEntityTypeSpoiler do
  @moduledoc  """
  A spoiler text. Not supported in secret chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_spoiler.html).
  """

  defstruct "@type": "textEntityTypeSpoiler", "@extra": nil
end
defmodule InlineQueryResultVoiceNote do
  @moduledoc  """
  Represents a voice note.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | voice_note | voiceNote | Voice note. |
  | title | string | Title of the voice note. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_voice_note.html).
  """

  defstruct "@type": "inlineQueryResultVoiceNote", "@extra": nil, id: nil, voice_note: nil, title: nil
end
defmodule InputMessageAnimation do
  @moduledoc  """
  An animation message (GIF-style).

  | Name | Type | Description |
  |------|------| ------------|
  | animation | InputFile | Animation file to be sent. |
  | thumbnail | inputThumbnail | Animation thumbnail; pass null to skip thumbnail uploading. |
  | added_sticker_file_ids | int32 | File identifiers of the stickers added to the animation, if applicable. |
  | duration | int32 | Duration of the animation, in seconds. |
  | width | int32 | Width of the animation; may be replaced by the server. |
  | height | int32 | Height of the animation; may be replaced by the server. |
  | caption | formattedText | Animation caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_animation.html).
  """

  defstruct "@type": "inputMessageAnimation", "@extra": nil, animation: nil, thumbnail: nil, added_sticker_file_ids: nil, duration: nil, width: nil, height: nil, caption: nil
end
defmodule PassportElementsWithErrors do
  @moduledoc  """
  Contains information about a Telegram Passport elements and corresponding errors.

  | Name | Type | Description |
  |------|------| ------------|
  | elements | PassportElement | Telegram Passport elements. |
  | errors | passportElementError | Errors in the elements that are already available. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_elements_with_errors.html).
  """

  defstruct "@type": "passportElementsWithErrors", "@extra": nil, elements: nil, errors: nil
end
defmodule LogVerbosityLevel do
  @moduledoc  """
  Contains a TDLib internal log verbosity level.

  | Name | Type | Description |
  |------|------| ------------|
  | verbosity_level | int32 | <a class="el" href="classtd_1_1_log.html">Log</a> verbosity level. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_verbosity_level.html).
  """

  defstruct "@type": "logVerbosityLevel", "@extra": nil, verbosity_level: nil
end
defmodule InlineKeyboardButtonTypeUser do
  @moduledoc  """
  A button with a user reference to be handled in the same way as textEntityTypeMentionName entities.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_user.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeUser", "@extra": nil, user_id: nil
end
defmodule TestVectorStringObject do
  @moduledoc  """
  A simple object containing a vector of objects that hold a string; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | testString | Vector of objects. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_string_object.html).
  """

  defstruct "@type": "testVectorStringObject", "@extra": nil, value: nil
end
defmodule ChatPhotos do
  @moduledoc  """
  Contains a list of chat or user profile photos.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Total number of photos. |
  | photos | chatPhoto | List of photos. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photos.html).
  """

  defstruct "@type": "chatPhotos", "@extra": nil, total_count: nil, photos: nil
end
defmodule DeviceTokenWebPush do
  @moduledoc  """
  A token for web Push API.

  | Name | Type | Description |
  |------|------| ------------|
  | endpoint | string | Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device. |
  | p256dh_base64url | string | Base64url-encoded P-256 elliptic curve Diffie-Hellman public key. |
  | auth_base64url | string | Base64url-encoded authentication secret. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_web_push.html).
  """

  defstruct "@type": "deviceTokenWebPush", "@extra": nil, endpoint: nil, p256dh_base64url: nil, auth_base64url: nil
end
defmodule PushMessageContentContactRegistered do
  @moduledoc  """
  A contact has registered with Telegram.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_contact_registered.html).
  """

  defstruct "@type": "pushMessageContentContactRegistered", "@extra": nil
end
defmodule PassportElementEmailAddress do
  @moduledoc  """
  A Telegram Passport element containing the user's email address.

  | Name | Type | Description |
  |------|------| ------------|
  | email_address | string | Email address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_email_address.html).
  """

  defstruct "@type": "passportElementEmailAddress", "@extra": nil, email_address: nil
end
defmodule MessageForwardOriginChat do
  @moduledoc  """
  The message was originally sent on behalf of a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | sender_chat_id | int53 | Identifier of the chat that originally sent the message. |
  | author_signature | string | For messages originally sent by an anonymous chat administrator, original message author signature. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forward_origin_chat.html).
  """

  defstruct "@type": "messageForwardOriginChat", "@extra": nil, sender_chat_id: nil, author_signature: nil
end
defmodule UserType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_user_type.html).
  """

  defstruct "@type": "UserType", "@extra": nil
end
defmodule CallState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_state.html).
  """

  defstruct "@type": "CallState", "@extra": nil
end
defmodule InputMessageAudio do
  @moduledoc  """
  An audio message.

  | Name | Type | Description |
  |------|------| ------------|
  | audio | InputFile | Audio file to be sent. |
  | album_cover_thumbnail | inputThumbnail | Thumbnail of the cover for the album; pass null to skip thumbnail uploading. |
  | duration | int32 | Duration of the audio, in seconds; may be replaced by the server. |
  | title | string | Title of the audio; 0-64 characters; may be replaced by the server. |
  | performer | string | Performer of the audio; 0-64 characters, may be replaced by the server. |
  | caption | formattedText | Audio caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_audio.html).
  """

  defstruct "@type": "inputMessageAudio", "@extra": nil, audio: nil, album_cover_thumbnail: nil, duration: nil, title: nil, performer: nil, caption: nil
end
defmodule ConnectionStateConnectingToProxy do
  @moduledoc  """
  Currently establishing a connection with a proxy server.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connection_state_connecting_to_proxy.html).
  """

  defstruct "@type": "connectionStateConnectingToProxy", "@extra": nil
end
defmodule ChatReportReasonIllegalDrugs do
  @moduledoc  """
  The chat has illegal drugs related content.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_illegal_drugs.html).
  """

  defstruct "@type": "chatReportReasonIllegalDrugs", "@extra": nil
end
defmodule PushMessageContentSticker do
  @moduledoc  """
  A message with a sticker.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | sticker | Message content; may be null. |
  | emoji | string | Emoji corresponding to the sticker; may be empty. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_sticker.html).
  """

  defstruct "@type": "pushMessageContentSticker", "@extra": nil, sticker: nil, emoji: nil, is_pinned: nil
end
defmodule InputPassportElementErrorSource do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_passport_element_error_source.html).
  """

  defstruct "@type": "InputPassportElementErrorSource", "@extra": nil
end
defmodule PassportElementTypeRentalAgreement do
  @moduledoc  """
  A Telegram Passport element containing the user's rental agreement.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_rental_agreement.html).
  """

  defstruct "@type": "passportElementTypeRentalAgreement", "@extra": nil
end
defmodule InputPassportElementPersonalDetails do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's personal details.

  | Name | Type | Description |
  |------|------| ------------|
  | personal_details | personalDetails | Personal details of the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_personal_details.html).
  """

  defstruct "@type": "inputPassportElementPersonalDetails", "@extra": nil, personal_details: nil
end
defmodule ChatEventMessageUnpinned do
  @moduledoc  """
  A message was unpinned.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | Unpinned message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_unpinned.html).
  """

  defstruct "@type": "chatEventMessageUnpinned", "@extra": nil, message: nil
end
defmodule SupergroupMembersFilterMention do
  @moduledoc  """
  Returns users which can be mentioned in the supergroup.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |
  | message_thread_id | int53 | If non-zero, the identifier of the current message thread. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_mention.html).
  """

  defstruct "@type": "supergroupMembersFilterMention", "@extra": nil, query: nil, message_thread_id: nil
end
defmodule ChatListFilter do
  @moduledoc  """
  A list of chats belonging to a chat filter.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_filter_id | int32 | Chat filter identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_list_filter.html).
  """

  defstruct "@type": "chatListFilter", "@extra": nil, chat_filter_id: nil
end
defmodule StickerTypeAnimated do
  @moduledoc  """
  The sticker is an animation in TGS format.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_type_animated.html).
  """

  defstruct "@type": "stickerTypeAnimated", "@extra": nil
end
defmodule InputPassportElementInternalPassport do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's internal passport.

  | Name | Type | Description |
  |------|------| ------------|
  | internal_passport | inputIdentityDocument | The internal passport to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_internal_passport.html).
  """

  defstruct "@type": "inputPassportElementInternalPassport", "@extra": nil, internal_passport: nil
end
defmodule MessageCalendarDay do
  @moduledoc  """
  Contains information about found messages sent on a specific day.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Total number of found messages sent on the day. |
  | message | message | First message sent on the day. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_calendar_day.html).
  """

  defstruct "@type": "messageCalendarDay", "@extra": nil, total_count: nil, message: nil
end
defmodule InputInlineQueryResultAnimation do
  @moduledoc  """
  Represents a link to an animated GIF or an animated (i.e., without sound) H.264/MPEG-4 AVC video.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the query result. |
  | thumbnail_url | string | URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists. |
  | thumbnail_mime_type | string | MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4". |
  | video_url | string | The URL of the video file (file size must not exceed 1MB). |
  | video_mime_type | string | MIME type of the video file. Must be one of "image/gif" and "video/mp4". |
  | video_duration | int32 | Duration of the video, in seconds. |
  | video_width | int32 | Width of the video. |
  | video_height | int32 | Height of the video. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_animation.html">inputMessageAnimation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_animation.html).
  """

  defstruct "@type": "inputInlineQueryResultAnimation", "@extra": nil, id: nil, title: nil, thumbnail_url: nil, thumbnail_mime_type: nil, video_url: nil, video_mime_type: nil, video_duration: nil, video_width: nil, video_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule ChatListArchive do
  @moduledoc  """
  A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_list_archive.html).
  """

  defstruct "@type": "chatListArchive", "@extra": nil
end
defmodule PassportElementErrorSourceTranslationFile do
  @moduledoc  """
  One of files with the translation of the document contains an error. The error will be considered resolved when the file changes.

  | Name | Type | Description |
  |------|------| ------------|
  | file_index | int32 | Index of a file with the error. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_translation_file.html).
  """

  defstruct "@type": "passportElementErrorSourceTranslationFile", "@extra": nil, file_index: nil
end
defmodule RichTextFixed do
  @moduledoc  """
  A fixed-width rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_fixed.html).
  """

  defstruct "@type": "richTextFixed", "@extra": nil, text: nil
end
defmodule MessageSupergroupChatCreate do
  @moduledoc  """
  A newly created supergroup or channel.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the supergroup or channel. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_supergroup_chat_create.html).
  """

  defstruct "@type": "messageSupergroupChatCreate", "@extra": nil, title: nil
end
defmodule MessageForwardOriginHiddenUser do
  @moduledoc  """
  The message was originally sent by a user, which is hidden by their privacy settings.

  | Name | Type | Description |
  |------|------| ------------|
  | sender_name | string | Name of the sender. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forward_origin_hidden_user.html).
  """

  defstruct "@type": "messageForwardOriginHiddenUser", "@extra": nil, sender_name: nil
end
defmodule TestString do
  @moduledoc  """
  A simple object containing a string; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | string | String. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_string.html).
  """

  defstruct "@type": "testString", "@extra": nil, value: nil
end
defmodule ChatJoinRequestsInfo do
  @moduledoc  """
  Contains information about pending join requests for a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Total number of pending join requests. |
  | user_ids | int53 | Identifiers of at most 3 users sent the newest pending join requests. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_join_requests_info.html).
  """

  defstruct "@type": "chatJoinRequestsInfo", "@extra": nil, total_count: nil, user_ids: nil
end
defmodule ScopeNotificationSettings do
  @moduledoc  """
  Contains information about notification settings for several chats.

  | Name | Type | Description |
  |------|------| ------------|
  | mute_for | int32 | Time left before notifications will be unmuted, in seconds. |
  | sound_id | int64 | Identifier of the notification sound to be played; 0 if sound is disabled. |
  | show_preview | bool | True, if message content must be displayed in notifications. |
  | disable_pinned_message_notifications | bool | True, if notifications for incoming pinned messages will be created as for an ordinary unread message. |
  | disable_mention_notifications | bool | True, if notifications for messages with mentions will be created as for an ordinary unread message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1scope_notification_settings.html).
  """

  defstruct "@type": "scopeNotificationSettings", "@extra": nil, mute_for: nil, sound_id: nil, show_preview: nil, disable_pinned_message_notifications: nil, disable_mention_notifications: nil
end
defmodule LogTags do
  @moduledoc  """
  Contains a list of available TDLib internal log tags.

  | Name | Type | Description |
  |------|------| ------------|
  | tags | string | List of log tags. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_tags.html).
  """

  defstruct "@type": "logTags", "@extra": nil, tags: nil
end
defmodule MessagePassportDataReceived do
  @moduledoc  """
  Telegram Passport data has been received; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | elements | encryptedPassportElement | List of received Telegram Passport elements. |
  | credentials | encryptedCredentials | Encrypted data credentials. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_passport_data_received.html).
  """

  defstruct "@type": "messagePassportDataReceived", "@extra": nil, elements: nil, credentials: nil
end
defmodule InternalLinkTypeMessage do
  @moduledoc  """
  The link is a link to a Telegram message. Call getMessageLinkInfo with the given URL to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | URL to be passed to <a class="el" href="classtd_1_1td__api_1_1get_message_link_info.html">getMessageLinkInfo</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_message.html).
  """

  defstruct "@type": "internalLinkTypeMessage", "@extra": nil, url: nil
end
defmodule InternalLinkTypeUserPhoneNumber do
  @moduledoc  """
  The link is a link to a user by its phone number. Call searchUserByPhoneNumber with the given phone number to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number | string | Phone number of the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_user_phone_number.html).
  """

  defstruct "@type": "internalLinkTypeUserPhoneNumber", "@extra": nil, phone_number: nil
end
defmodule TextEntityTypePre do
  @moduledoc  """
  Text that must be formatted as if inside a pre HTML tag.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_pre.html).
  """

  defstruct "@type": "textEntityTypePre", "@extra": nil
end
defmodule ChatEventAction do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_event_action.html).
  """

  defstruct "@type": "ChatEventAction", "@extra": nil
end
defmodule ChatStatisticsMessageSenderInfo do
  @moduledoc  """
  Contains statistics about messages sent by a user.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier. |
  | sent_message_count | int32 | Number of sent messages. |
  | average_character_count | int32 | Average number of characters in sent messages; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_message_sender_info.html).
  """

  defstruct "@type": "chatStatisticsMessageSenderInfo", "@extra": nil, user_id: nil, sent_message_count: nil, average_character_count: nil
end
defmodule PushMessageContent do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_push_message_content.html).
  """

  defstruct "@type": "PushMessageContent", "@extra": nil
end
defmodule Text do
  @moduledoc  """
  Contains some text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text.html).
  """

  defstruct "@type": "text", "@extra": nil, text: nil
end
defmodule MessageCalendar do
  @moduledoc  """
  Contains information about found messages, split by days according to the option "utc_time_offset".

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Total number of found messages. |
  | days | messageCalendarDay | Information about messages sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_calendar.html).
  """

  defstruct "@type": "messageCalendar", "@extra": nil, total_count: nil, days: nil
end
defmodule FileTypeVideo do
  @moduledoc  """
  The file is a video.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_video.html).
  """

  defstruct "@type": "fileTypeVideo", "@extra": nil
end
defmodule ChatTypeBasicGroup do
  @moduledoc  """
  A basic group (a chat with 0-200 other users).

  | Name | Type | Description |
  |------|------| ------------|
  | basic_group_id | int53 | Basic group identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_type_basic_group.html).
  """

  defstruct "@type": "chatTypeBasicGroup", "@extra": nil, basic_group_id: nil
end
defmodule LanguagePackStringValueDeleted do
  @moduledoc  """
  A deleted language pack string, the value must be taken from the built-in English language pack.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_string_value_deleted.html).
  """

  defstruct "@type": "languagePackStringValueDeleted", "@extra": nil
end
defmodule TextEntityTypeTextUrl do
  @moduledoc  """
  A text description shown instead of a raw URL.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | HTTP or tg:// URL to be opened when the link is clicked. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_text_url.html).
  """

  defstruct "@type": "textEntityTypeTextUrl", "@extra": nil, url: nil
end
defmodule CallDiscardReasonMissed do
  @moduledoc  """
  The call was ended before the conversation started. It was canceled by the caller or missed by the other party.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_missed.html).
  """

  defstruct "@type": "callDiscardReasonMissed", "@extra": nil
end
defmodule ChatActionBarReportAddBlock do
  @moduledoc  """
  The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be blocked using the method toggleMessageSenderIsBlocked, or the other user can be added to the contact list using the method addContact.

  | Name | Type | Description |
  |------|------| ------------|
  | can_unarchive | bool | If true, the chat was automatically archived and can be moved back to the main chat list using <a class="el" href="classtd_1_1td__api_1_1add_chat_to_list.html">addChatToList</a> simultaneously with setting chat notification settings to default using <a class="el" href="classtd_1_1td__api_1_1set_chat_notification_settings.html">setChatNotificationSettings</a>. |
  | distance | int32 | If non-negative, the current user was found by the peer through <a class="el" href="classtd_1_1td__api_1_1search_chats_nearby.html">searchChatsNearby</a> and this is the distance between the users. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_report_add_block.html).
  """

  defstruct "@type": "chatActionBarReportAddBlock", "@extra": nil, can_unarchive: nil, distance: nil
end
defmodule StorageStatisticsByFileType do
  @moduledoc  """
  Contains the storage usage statistics for a specific file type.

  | Name | Type | Description |
  |------|------| ------------|
  | file_type | FileType | File type. |
  | size | int53 | Total size of the files, in bytes. |
  | count | int32 | Total number of files. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics_by_file_type.html).
  """

  defstruct "@type": "storageStatisticsByFileType", "@extra": nil, file_type: nil, size: nil, count: nil
end
defmodule FileTypeProfilePhoto do
  @moduledoc  """
  The file is a profile photo.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_profile_photo.html).
  """

  defstruct "@type": "fileTypeProfilePhoto", "@extra": nil
end
defmodule NotificationSettingsScopePrivateChats do
  @moduledoc  """
  Notification settings applied to all private and secret chats when the corresponding chat setting has a default value.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_private_chats.html).
  """

  defstruct "@type": "notificationSettingsScopePrivateChats", "@extra": nil
end
defmodule PageBlockEmbedded do
  @moduledoc  """
  An embedded web page.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | Web page URL, if available. |
  | html | string | HTML-markup of the embedded page. |
  | poster_photo | photo | Poster photo, if available; may be null. |
  | width | int32 | Block width; 0 if unknown. |
  | height | int32 | Block height; 0 if unknown. |
  | caption | pageBlockCaption | Block caption. |
  | is_full_width | bool | True, if the block must be full width. |
  | allow_scrolling | bool | True, if scrolling needs to be allowed. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_embedded.html).
  """

  defstruct "@type": "pageBlockEmbedded", "@extra": nil, url: nil, html: nil, poster_photo: nil, width: nil, height: nil, caption: nil, is_full_width: nil, allow_scrolling: nil
end
defmodule LocalizationTargetInfo do
  @moduledoc  """
  Contains information about the current localization target.

  | Name | Type | Description |
  |------|------| ------------|
  | language_packs | languagePackInfo | List of available language packs for this application. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1localization_target_info.html).
  """

  defstruct "@type": "localizationTargetInfo", "@extra": nil, language_packs: nil
end
defmodule PageBlockMap do
  @moduledoc  """
  A map.

  | Name | Type | Description |
  |------|------| ------------|
  | location | location | Location of the map center. |
  | zoom | int32 | Map zoom level. |
  | width | int32 | Map width. |
  | height | int32 | Map height. |
  | caption | pageBlockCaption | Block caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_map.html).
  """

  defstruct "@type": "pageBlockMap", "@extra": nil, location: nil, zoom: nil, width: nil, height: nil, caption: nil
end
defmodule UserPrivacySettingAllowPeerToPeerCalls do
  @moduledoc  """
  A privacy setting for managing whether peer-to-peer connections can be used for calls.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_peer_to_peer_calls.html).
  """

  defstruct "@type": "userPrivacySettingAllowPeerToPeerCalls", "@extra": nil
end
defmodule UpdateAnimationSearchParameters do
  @moduledoc  """
  The parameters of animation search through GetOption("animation_search_bot_username") bot has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | provider | string | Name of the animation search provider. |
  | emojis | string | The new list of emojis suggested for searching. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_animation_search_parameters.html).
  """

  defstruct "@type": "updateAnimationSearchParameters", "@extra": nil, provider: nil, emojis: nil
end
defmodule InputThumbnail do
  @moduledoc  """
  A thumbnail to be sent along with a file; must be in JPEG or WEBP format for stickers, and less than 200 KB in size.

  | Name | Type | Description |
  |------|------| ------------|
  | thumbnail | InputFile | Thumbnail file to send. Sending thumbnails by file_id is currently not supported. |
  | width | int32 | Thumbnail width, usually shouldn't exceed 320. Use 0 if unknown. |
  | height | int32 | Thumbnail height, usually shouldn't exceed 320. Use 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_thumbnail.html).
  """

  defstruct "@type": "inputThumbnail", "@extra": nil, thumbnail: nil, width: nil, height: nil
end
defmodule PremiumFeature do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_premium_feature.html).
  """

  defstruct "@type": "PremiumFeature", "@extra": nil
end
defmodule PollTypeRegular do
  @moduledoc  """
  A regular poll.

  | Name | Type | Description |
  |------|------| ------------|
  | allow_multiple_answers | bool | True, if multiple answer options can be chosen simultaneously. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1poll_type_regular.html).
  """

  defstruct "@type": "pollTypeRegular", "@extra": nil, allow_multiple_answers: nil
end
defmodule ChatJoinRequest do
  @moduledoc  """
  Describes a user that sent a join request and waits for administrator approval.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier. |
  | date | int32 | Point in time (Unix timestamp) when the user sent the join request. |
  | bio | string | A short bio of the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_join_request.html).
  """

  defstruct "@type": "chatJoinRequest", "@extra": nil, user_id: nil, date: nil, bio: nil
end
defmodule InputMessageDocument do
  @moduledoc  """
  A document message (general file).

  | Name | Type | Description |
  |------|------| ------------|
  | document | InputFile | Document to be sent. |
  | thumbnail | inputThumbnail | Document thumbnail; pass null to skip thumbnail uploading. |
  | disable_content_type_detection | bool | If true, automatic file type detection will be disabled and the document will be always sent as file. Always true for files sent to secret chats. |
  | caption | formattedText | Document caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_document.html).
  """

  defstruct "@type": "inputMessageDocument", "@extra": nil, document: nil, thumbnail: nil, disable_content_type_detection: nil, caption: nil
end
defmodule KeyboardButtonTypeRequestLocation do
  @moduledoc  """
  A button that sends the user's location when pressed; available only in private chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_location.html).
  """

  defstruct "@type": "keyboardButtonTypeRequestLocation", "@extra": nil
end
defmodule UpdateNewCallSignalingData do
  @moduledoc  """
  New call signaling data arrived.

  | Name | Type | Description |
  |------|------| ------------|
  | call_id | int32 | The call identifier. |
  | data | bytes | The data. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_call_signaling_data.html).
  """

  defstruct "@type": "updateNewCallSignalingData", "@extra": nil, call_id: nil, data: nil
end
defmodule UpdateChatReadInbox do
  @moduledoc  """
  Incoming messages were read or the number of unread messages has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | last_read_inbox_message_id | int53 | Identifier of the last read incoming message. |
  | unread_count | int32 | The number of unread messages left in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_read_inbox.html).
  """

  defstruct "@type": "updateChatReadInbox", "@extra": nil, chat_id: nil, last_read_inbox_message_id: nil, unread_count: nil
end
defmodule UserFullInfo do
  @moduledoc  """
  Contains full information about a user.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | chatPhoto | User profile photo; may be null. |
  | is_blocked | bool | True, if the user is blocked by the current user. |
  | can_be_called | bool | True, if the user can be called. |
  | supports_video_calls | bool | True, if a video call can be created with the user. |
  | has_private_calls | bool | True, if the user can't be called due to their privacy settings. |
  | has_private_forwards | bool | True, if the user can't be linked in forwarded messages due to their privacy settings. |
  | need_phone_number_privacy_exception | bool | True, if the current user needs to explicitly allow to share their phone number with the user when the method <a class="el" href="classtd_1_1td__api_1_1add_contact.html">addContact</a> is used. |
  | bio | formattedText | A short user bio; may be null for bots. |
  | group_in_common_count | int32 | Number of group chats where both the other user and the current user are a member; 0 for the current user. |
  | bot_info | botInfo | For bots, information about the bot; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_full_info.html).
  """

  defstruct "@type": "userFullInfo", "@extra": nil, photo: nil, is_blocked: nil, can_be_called: nil, supports_video_calls: nil, has_private_calls: nil, has_private_forwards: nil, need_phone_number_privacy_exception: nil, bio: nil, group_in_common_count: nil, bot_info: nil
end
defmodule InputPassportElementErrorSourceFile do
  @moduledoc  """
  The file contains an error. The error is considered resolved when the file changes.

  | Name | Type | Description |
  |------|------| ------------|
  | file_hash | bytes | Current hash of the file which has the error. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_file.html).
  """

  defstruct "@type": "inputPassportElementErrorSourceFile", "@extra": nil, file_hash: nil
end
defmodule UpdateNewChosenInlineResult do
  @moduledoc  """
  The user has chosen a result of an inline query; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | sender_user_id | int53 | Identifier of the user who sent the query. |
  | user_location | location | User location; may be null. |
  | query | string | Text of the query. |
  | result_id | string | Identifier of the chosen result. |
  | inline_message_id | string | Identifier of the sent inline message, if known. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_chosen_inline_result.html).
  """

  defstruct "@type": "updateNewChosenInlineResult", "@extra": nil, sender_user_id: nil, user_location: nil, query: nil, result_id: nil, inline_message_id: nil
end
defmodule CallStateExchangingKeys do
  @moduledoc  """
  The call has been answered and encryption keys are being exchanged.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_exchanging_keys.html).
  """

  defstruct "@type": "callStateExchangingKeys", "@extra": nil
end
defmodule SessionTypeIphone do
  @moduledoc  """
  The session is running on an iPhone device.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_iphone.html).
  """

  defstruct "@type": "sessionTypeIphone", "@extra": nil
end
defmodule Contact do
  @moduledoc  """
  Describes a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number | string | Phone number of the user. |
  | first_name | string | First name of the user; 1-255 characters in length. |
  | last_name | string | Last name of the user. |
  | vcard | string | Additional data about the user in a form of vCard; 0-2048 bytes in length. |
  | user_id | int53 | Identifier of the user, if known; otherwise 0. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1contact.html).
  """

  defstruct "@type": "contact", "@extra": nil, phone_number: nil, first_name: nil, last_name: nil, vcard: nil, user_id: nil
end
defmodule MessageLocation do
  @moduledoc  """
  A message with a location.

  | Name | Type | Description |
  |------|------| ------------|
  | location | location | The location description. |
  | live_period | int32 | Time relative to the message send date, for which the location can be updated, in seconds. |
  | expires_in | int32 | Left time for which the location can be updated, in seconds. <a class="el" href="classtd_1_1td__api_1_1update_message_content.html">updateMessageContent</a> is not sent when this field changes. |
  | heading | int32 | For live locations, a direction in which the location moves, in degrees; 1-360. If 0 the direction is unknown. |
  | proximity_alert_radius | int32 | For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). 0 if the notification is disabled. Available only for the message sender. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_location.html).
  """

  defstruct "@type": "messageLocation", "@extra": nil, location: nil, live_period: nil, expires_in: nil, heading: nil, proximity_alert_radius: nil
end
defmodule UpdateActiveNotifications do
  @moduledoc  """
  Contains active notifications that was shown on previous application launches. This update is sent only if the message database is used. In that case it comes once before any updateNotification and updateNotificationGroup update.

  | Name | Type | Description |
  |------|------| ------------|
  | groups | notificationGroup | Lists of active notification groups. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_active_notifications.html).
  """

  defstruct "@type": "updateActiveNotifications", "@extra": nil, groups: nil
end
defmodule UpdateHavePendingNotifications do
  @moduledoc  """
  Describes whether there are some pending notification updates. Can be used to prevent application from killing, while there are some pending notifications.

  | Name | Type | Description |
  |------|------| ------------|
  | have_delayed_notifications | bool | True, if there are some delayed notification updates, which will be sent soon. |
  | have_unreceived_notifications | bool | True, if there can be some yet unreceived notifications, which are being fetched from the server. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_have_pending_notifications.html).
  """

  defstruct "@type": "updateHavePendingNotifications", "@extra": nil, have_delayed_notifications: nil, have_unreceived_notifications: nil
end
defmodule AuthenticationCodeInfo do
  @moduledoc  """
  Information about the authentication code that was sent.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number | string | A phone number that is being authenticated. |
  | type | AuthenticationCodeType | The way the code was sent to the user. |
  | next_type | AuthenticationCodeType | The way the next code will be sent to the user; may be null. |
  | timeout | int32 | Timeout before the code can be re-sent, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_info.html).
  """

  defstruct "@type": "authenticationCodeInfo", "@extra": nil, phone_number: nil, type: nil, next_type: nil, timeout: nil
end
defmodule InternalLinkTypeTheme do
  @moduledoc  """
  The link is a link to a theme. TDLib has no theme support yet.

  | Name | Type | Description |
  |------|------| ------------|
  | theme_name | string | Name of the theme. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_theme.html).
  """

  defstruct "@type": "internalLinkTypeTheme", "@extra": nil, theme_name: nil
end
defmodule InputPassportElementErrorSourceUnspecified do
  @moduledoc  """
  The element contains an error in an unspecified place. The error will be considered resolved when new data is added.

  | Name | Type | Description |
  |------|------| ------------|
  | element_hash | bytes | Current hash of the entire element. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_unspecified.html).
  """

  defstruct "@type": "inputPassportElementErrorSourceUnspecified", "@extra": nil, element_hash: nil
end
defmodule PushMessageContentBasicGroupChatCreate do
  @moduledoc  """
  A newly created basic group.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_basic_group_chat_create.html).
  """

  defstruct "@type": "pushMessageContentBasicGroupChatCreate", "@extra": nil
end
defmodule PushMessageContentChatSetTheme do
  @moduledoc  """
  A chat theme was edited.

  | Name | Type | Description |
  |------|------| ------------|
  | theme_name | string | If non-empty, name of a new theme, set for the chat. Otherwise chat theme was reset to the default one. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_set_theme.html).
  """

  defstruct "@type": "pushMessageContentChatSetTheme", "@extra": nil, theme_name: nil
end
defmodule InputMessageContent do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_message_content.html).
  """

  defstruct "@type": "InputMessageContent", "@extra": nil
end
defmodule UpdateGroupCallParticipant do
  @moduledoc  """
  Information about a group call participant was changed. The updates are sent only after the group call is received through getGroupCall and only if the call is joined or being joined.

  | Name | Type | Description |
  |------|------| ------------|
  | group_call_id | int32 | Identifier of group call. |
  | participant | groupCallParticipant | New data about a participant. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_group_call_participant.html).
  """

  defstruct "@type": "updateGroupCallParticipant", "@extra": nil, group_call_id: nil, participant: nil
end
defmodule AuthenticationCodeTypeFlashCall do
  @moduledoc  """
  An authentication code is delivered by an immediately canceled call to the specified phone number. The phone number that calls is the code that must be entered automatically.

  | Name | Type | Description |
  |------|------| ------------|
  | pattern | string | Pattern of the phone number from which the call will be made. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_flash_call.html).
  """

  defstruct "@type": "authenticationCodeTypeFlashCall", "@extra": nil, pattern: nil
end
defmodule UpdateChatDraftMessage do
  @moduledoc  """
  A chat draft has changed. Be aware that the update may come in the currently opened chat but with old content of the draft. If the user has changed the content of the draft, this update mustn't be applied.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | draft_message | draftMessage | The new draft message; may be null. |
  | positions | chatPosition | The new chat positions in the chat lists. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_draft_message.html).
  """

  defstruct "@type": "updateChatDraftMessage", "@extra": nil, chat_id: nil, draft_message: nil, positions: nil
end
defmodule UpdateMessageUnreadReactions do
  @moduledoc  """
  The list of unread reactions added to a message was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_id | int53 | Message identifier. |
  | unread_reactions | unreadReaction | The new list of unread reactions. |
  | unread_reaction_count | int32 | The new number of messages with unread reactions left in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_unread_reactions.html).
  """

  defstruct "@type": "updateMessageUnreadReactions", "@extra": nil, chat_id: nil, message_id: nil, unread_reactions: nil, unread_reaction_count: nil
end
defmodule TMeUrls do
  @moduledoc  """
  Contains a list of t.me URLs.

  | Name | Type | Description |
  |------|------| ------------|
  | urls | tMeUrl | List of URLs. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_urls.html).
  """

  defstruct "@type": "tMeUrls", "@extra": nil, urls: nil
end
defmodule PassportElementErrorSourceFiles do
  @moduledoc  """
  The list of attached files contains an error. The error will be considered resolved when the list of files changes.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_files.html).
  """

  defstruct "@type": "passportElementErrorSourceFiles", "@extra": nil
end
defmodule AuthorizationStateReady do
  @moduledoc  """
  The user has been successfully authorized. TDLib is now ready to answer queries.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_ready.html).
  """

  defstruct "@type": "authorizationStateReady", "@extra": nil
end
defmodule Session do
  @moduledoc  """
  Contains information about one session in a Telegram application used by the current user. Sessions must be shown to the user in the returned order.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Session identifier. |
  | is_current | bool | True, if this session is the current session. |
  | is_password_pending | bool | True, if a password is needed to complete authorization of the session. |
  | can_accept_secret_chats | bool | True, if incoming secret chats can be accepted by the session. |
  | can_accept_calls | bool | True, if incoming calls can be accepted by the session. |
  | type | SessionType | Session type based on the system and application version, which can be used to display a corresponding icon. |
  | api_id | int32 | Telegram API identifier, as provided by the application. |
  | application_name | string | Name of the application, as provided by the application. |
  | application_version | string | The version of the application, as provided by the application. |
  | is_official_application | bool | True, if the application is an official application or uses the api_id of an official application. |
  | device_model | string | Model of the device the application has been run or is running on, as provided by the application. |
  | platform | string | Operating system the application has been run or is running on, as provided by the application. |
  | system_version | string | Version of the operating system the application has been run or is running on, as provided by the application. |
  | log_in_date | int32 | Point in time (Unix timestamp) when the user has logged in. |
  | last_active_date | int32 | Point in time (Unix timestamp) when the session was last used. |
  | ip | string | IP address from which the session was created, in human-readable format. |
  | country | string | A two-letter country code for the country from which the session was created, based on the IP address. |
  | region | string | Region code from which the session was created, based on the IP address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session.html).
  """

  defstruct "@type": "session", "@extra": nil, id: nil, is_current: nil, is_password_pending: nil, can_accept_secret_chats: nil, can_accept_calls: nil, type: nil, api_id: nil, application_name: nil, application_version: nil, is_official_application: nil, device_model: nil, platform: nil, system_version: nil, log_in_date: nil, last_active_date: nil, ip: nil, country: nil, region: nil
end
defmodule ChatEventMemberRestricted do
  @moduledoc  """
  A chat member was restricted/unrestricted or banned/unbanned, or the list of their restrictions has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | member_id | MessageSender | Affected chat member identifier. |
  | old_status | ChatMemberStatus | Previous status of the chat member. |
  | new_status | ChatMemberStatus | New status of the chat member. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_restricted.html).
  """

  defstruct "@type": "chatEventMemberRestricted", "@extra": nil, member_id: nil, old_status: nil, new_status: nil
end
defmodule PaymentForm do
  @moduledoc  """
  Contains information about an invoice payment form.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | The payment form identifier. |
  | invoice | invoice | Full information about the invoice. |
  | seller_bot_user_id | int53 | User identifier of the seller bot. |
  | payment_provider_user_id | int53 | User identifier of the payment provider bot. |
  | payment_provider | PaymentProvider | Information about the payment provider. |
  | saved_order_info | orderInfo | Saved server-side order information; may be null. |
  | saved_credentials | savedCredentials | Information about saved card credentials; may be null. |
  | can_save_credentials | bool | True, if the user can choose to save credentials. |
  | need_password | bool | True, if the user will be able to save credentials protected by a password they set up. |
  | product_title | string | Product title. |
  | product_description | formattedText | Product description. |
  | product_photo | photo | Product photo; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_form.html).
  """

  defstruct "@type": "paymentForm", "@extra": nil, id: nil, invoice: nil, seller_bot_user_id: nil, payment_provider_user_id: nil, payment_provider: nil, saved_order_info: nil, saved_credentials: nil, can_save_credentials: nil, need_password: nil, product_title: nil, product_description: nil, product_photo: nil
end
defmodule JsonValueNull do
  @moduledoc  """
  Represents a null JSON value.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_null.html).
  """

  defstruct "@type": "jsonValueNull", "@extra": nil
end
defmodule StickerSet do
  @moduledoc  """
  Represents a sticker set.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Identifier of the sticker set. |
  | title | string | Title of the sticker set. |
  | name | string | Name of the sticker set. |
  | thumbnail | thumbnail | Sticker set thumbnail in WEBP, TGS, or WEBM format with width and height 100; may be null. The file can be downloaded only before the thumbnail is changed. |
  | thumbnail_outline | closedVectorPath | Sticker set thumbnail's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner. |
  | is_installed | bool | True, if the sticker set has been installed by the current user. |
  | is_archived | bool | True, if the sticker set has been archived. A sticker set can't be installed and archived simultaneously. |
  | is_official | bool | True, if the sticker set is official. |
  | sticker_type | StickerType | Type of the stickers in the set. |
  | is_viewed | bool | True for already viewed trending sticker sets. |
  | stickers | sticker | List of stickers in this set. |
  | emojis | emojis | A list of emoji corresponding to the stickers in the same order. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_set.html).
  """

  defstruct "@type": "stickerSet", "@extra": nil, id: nil, title: nil, name: nil, thumbnail: nil, thumbnail_outline: nil, is_installed: nil, is_archived: nil, is_official: nil, sticker_type: nil, is_viewed: nil, stickers: nil, emojis: nil
end
defmodule PasswordState do
  @moduledoc  """
  Represents the current state of 2-step verification.

  | Name | Type | Description |
  |------|------| ------------|
  | has_password | bool | True, if a 2-step verification password is set. |
  | password_hint | string | Hint for the password; may be empty. |
  | has_recovery_email_address | bool | True, if a recovery email is set. |
  | has_passport_data | bool | True, if some Telegram Passport elements were saved. |
  | recovery_email_address_code_info | emailAddressAuthenticationCodeInfo | Information about the recovery email address to which the confirmation email was sent; may be null. |
  | pending_reset_date | int32 | If not 0, point in time (Unix timestamp) after which the password can be reset immediately using <a class="el" href="classtd_1_1td__api_1_1reset_password.html">resetPassword</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1password_state.html).
  """

  defstruct "@type": "passwordState", "@extra": nil, has_password: nil, password_hint: nil, has_recovery_email_address: nil, has_passport_data: nil, recovery_email_address_code_info: nil, pending_reset_date: nil
end
defmodule UpdateMessageIsPinned do
  @moduledoc  """
  The message pinned state was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_id | int53 | The message identifier. |
  | is_pinned | bool | True, if the message is pinned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_is_pinned.html).
  """

  defstruct "@type": "updateMessageIsPinned", "@extra": nil, chat_id: nil, message_id: nil, is_pinned: nil
end
defmodule ChatEventMessageDeleted do
  @moduledoc  """
  A message was deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | Deleted message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_deleted.html).
  """

  defstruct "@type": "chatEventMessageDeleted", "@extra": nil, message: nil
end
defmodule InlineKeyboardButtonTypeLoginUrl do
  @moduledoc  """
  A button that opens a specified URL and automatically authorize the current user by calling getLoginUrlInfo.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | An HTTP URL to pass to <a class="el" href="classtd_1_1td__api_1_1get_login_url_info.html">getLoginUrlInfo</a>. |
  | id | int53 | Unique button identifier. |
  | forward_text | string | If non-empty, new text of the button in forwarded messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_login_url.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeLoginUrl", "@extra": nil, url: nil, id: nil, forward_text: nil
end
defmodule FileTypeSecure do
  @moduledoc  """
  The file is a file from Secure storage used for storing Telegram Passport files.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_secure.html).
  """

  defstruct "@type": "fileTypeSecure", "@extra": nil
end
defmodule SessionTypeApple do
  @moduledoc  """
  The session is running on a generic Apple device.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_apple.html).
  """

  defstruct "@type": "sessionTypeApple", "@extra": nil
end
defmodule UserPrivacySettingRuleAllowUsers do
  @moduledoc  """
  A rule to allow certain specified users to do something.

  | Name | Type | Description |
  |------|------| ------------|
  | user_ids | int53 | The user identifiers, total number of users in all rules must not exceed 1000. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_users.html).
  """

  defstruct "@type": "userPrivacySettingRuleAllowUsers", "@extra": nil, user_ids: nil
end
defmodule SecretChatState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_secret_chat_state.html).
  """

  defstruct "@type": "SecretChatState", "@extra": nil
end
defmodule OptionValueString do
  @moduledoc  """
  Represents a string option.

  | Name | Type | Description |
  |------|------| ------------|
  | value | string | The value of the option. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_string.html).
  """

  defstruct "@type": "optionValueString", "@extra": nil, value: nil
end
defmodule DateRange do
  @moduledoc  """
  Represents a date range.

  | Name | Type | Description |
  |------|------| ------------|
  | start_date | int32 | Point in time (Unix timestamp) at which the date range begins. |
  | end_date | int32 | Point in time (Unix timestamp) at which the date range ends. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1date_range.html).
  """

  defstruct "@type": "dateRange", "@extra": nil, start_date: nil, end_date: nil
end
defmodule PageBlockSlideshow do
  @moduledoc  """
  A slideshow.

  | Name | Type | Description |
  |------|------| ------------|
  | page_blocks | PageBlock | Slideshow item contents. |
  | caption | pageBlockCaption | Block caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_slideshow.html).
  """

  defstruct "@type": "pageBlockSlideshow", "@extra": nil, page_blocks: nil, caption: nil
end
defmodule RecoveryEmailAddress do
  @moduledoc  """
  Contains information about the current recovery email address.

  | Name | Type | Description |
  |------|------| ------------|
  | recovery_email_address | string | Recovery email address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recovery_email_address.html).
  """

  defstruct "@type": "recoveryEmailAddress", "@extra": nil, recovery_email_address: nil
end
defmodule VectorPathCommandCubicBezierCurve do
  @moduledoc  """
  A cubic B�zier curve to a given point.

  | Name | Type | Description |
  |------|------| ------------|
  | start_control_point | point | The start control point of the curve. |
  | end_control_point | point | The end control point of the curve. |
  | end_point | point | The end point of the curve. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1vector_path_command_cubic_bezier_curve.html).
  """

  defstruct "@type": "vectorPathCommandCubicBezierCurve", "@extra": nil, start_control_point: nil, end_control_point: nil, end_point: nil
end
defmodule InternalLinkType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_internal_link_type.html).
  """

  defstruct "@type": "InternalLinkType", "@extra": nil
end
defmodule CallDiscardReasonDisconnected do
  @moduledoc  """
  The call was ended during the conversation because the users were disconnected.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_disconnected.html).
  """

  defstruct "@type": "callDiscardReasonDisconnected", "@extra": nil
end
defmodule Location do
  @moduledoc  """
  Describes a location on planet Earth.

  | Name | Type | Description |
  |------|------| ------------|
  | latitude | double | Latitude of the location in degrees; as defined by the sender. |
  | longitude | double | Longitude of the location, in degrees; as defined by the sender. |
  | horizontal_accuracy | double | The estimated horizontal accuracy of the location, in meters; as defined by the sender. 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1location.html).
  """

  defstruct "@type": "location", "@extra": nil, latitude: nil, longitude: nil, horizontal_accuracy: nil
end
defmodule PushMessageContentChatChangeTitle do
  @moduledoc  """
  A chat title was edited.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | New chat title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_change_title.html).
  """

  defstruct "@type": "pushMessageContentChatChangeTitle", "@extra": nil, title: nil
end
defmodule InlineQueryResultArticle do
  @moduledoc  """
  Represents a link to an article or web page.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | url | string | URL of the result, if it exists. |
  | hide_url | bool | True, if the URL must be not shown. |
  | title | string | Title of the result. |
  | description | string | A short description of the result. |
  | thumbnail | thumbnail | Result thumbnail in JPEG format; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_article.html).
  """

  defstruct "@type": "inlineQueryResultArticle", "@extra": nil, id: nil, url: nil, hide_url: nil, title: nil, description: nil, thumbnail: nil
end
defmodule FileDownload do
  @moduledoc  """
  Describes a file added to file download list.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | int32 | File identifier. |
  | message | message | The message with the file. |
  | add_date | int32 | Point in time (Unix timestamp) when the file was added to the download list. |
  | complete_date | int32 | Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed. |
  | is_paused | bool | True, if downloading of the file is paused. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_download.html).
  """

  defstruct "@type": "fileDownload", "@extra": nil, file_id: nil, message: nil, add_date: nil, complete_date: nil, is_paused: nil
end
defmodule ReplyMarkupForceReply do
  @moduledoc  """
  Instructs application to force a reply to this message.

  | Name | Type | Description |
  |------|------| ------------|
  | is_personal | bool | True, if a forced reply must automatically be shown to the current user. For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user of a reply. |
  | input_field_placeholder | string | If non-empty, the placeholder to be shown in the input field when the reply is active; 0-64 characters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_force_reply.html).
  """

  defstruct "@type": "replyMarkupForceReply", "@extra": nil, is_personal: nil, input_field_placeholder: nil
end
defmodule PollTypeQuiz do
  @moduledoc  """
  A poll in quiz mode, which has exactly one correct answer option and can be answered only once.

  | Name | Type | Description |
  |------|------| ------------|
  | correct_option_id | int32 | 0-based identifier of the correct answer option; -1 for a yet unanswered poll. |
  | explanation | formattedText | Text that is shown when the user chooses an incorrect answer or taps on the lamp icon; 0-200 characters with at most 2 line feeds; empty for a yet unanswered poll. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1poll_type_quiz.html).
  """

  defstruct "@type": "pollTypeQuiz", "@extra": nil, correct_option_id: nil, explanation: nil
end
defmodule FileTypeThumbnail do
  @moduledoc  """
  The file is a thumbnail of another file.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_thumbnail.html).
  """

  defstruct "@type": "fileTypeThumbnail", "@extra": nil
end
defmodule BasicGroupFullInfo do
  @moduledoc  """
  Contains full information about a basic group.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | chatPhoto | Chat photo; may be null. |
  | description | string | Group description. Updated only after the basic group is opened. |
  | creator_user_id | int53 | User identifier of the creator of the group; 0 if unknown. |
  | members | chatMember | Group members. |
  | invite_link | chatInviteLink | Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened. |
  | bot_commands | botCommands | List of commands of bots in the group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1basic_group_full_info.html).
  """

  defstruct "@type": "basicGroupFullInfo", "@extra": nil, photo: nil, description: nil, creator_user_id: nil, members: nil, invite_link: nil, bot_commands: nil
end
defmodule CallServerTypeWebrtc do
  @moduledoc  """
  A WebRTC server.

  | Name | Type | Description |
  |------|------| ------------|
  | username | string | Username to be used for authentication. |
  | password | string | Authentication password. |
  | supports_turn | bool | True, if the server supports TURN. |
  | supports_stun | bool | True, if the server supports STUN. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_server_type_webrtc.html).
  """

  defstruct "@type": "callServerTypeWebrtc", "@extra": nil, username: nil, password: nil, supports_turn: nil, supports_stun: nil
end
defmodule InternalLinkTypeGame do
  @moduledoc  """
  The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_username | string | Username of the bot that owns the game. |
  | game_short_name | string | Short name of the game. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_game.html).
  """

  defstruct "@type": "internalLinkTypeGame", "@extra": nil, bot_username: nil, game_short_name: nil
end
defmodule InputPassportElementErrorSourceDataField do
  @moduledoc  """
  A data field contains an error. The error is considered resolved when the field's value changes.

  | Name | Type | Description |
  |------|------| ------------|
  | field_name | string | Field name. |
  | data_hash | bytes | Current data hash. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_data_field.html).
  """

  defstruct "@type": "inputPassportElementErrorSourceDataField", "@extra": nil, field_name: nil, data_hash: nil
end
defmodule PassportElementPassport do
  @moduledoc  """
  A Telegram Passport element containing the user's passport.

  | Name | Type | Description |
  |------|------| ------------|
  | passport | identityDocument | Passport. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_passport.html).
  """

  defstruct "@type": "passportElementPassport", "@extra": nil, passport: nil
end
defmodule InlineQueryResultVideo do
  @moduledoc  """
  Represents a video.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | video | video | Video. |
  | title | string | Title of the video. |
  | description | string | Description of the video. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_video.html).
  """

  defstruct "@type": "inlineQueryResultVideo", "@extra": nil, id: nil, video: nil, title: nil, description: nil
end
defmodule UpdateChatNotificationSettings do
  @moduledoc  """
  Notification settings for a chat were changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | notification_settings | chatNotificationSettings | The new notification settings. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_notification_settings.html).
  """

  defstruct "@type": "updateChatNotificationSettings", "@extra": nil, chat_id: nil, notification_settings: nil
end
defmodule UpdateChatHasScheduledMessages do
  @moduledoc  """
  A chat's has_scheduled_messages field has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | has_scheduled_messages | bool | New value of has_scheduled_messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_has_scheduled_messages.html).
  """

  defstruct "@type": "updateChatHasScheduledMessages", "@extra": nil, chat_id: nil, has_scheduled_messages: nil
end
defmodule TextEntityTypeCode do
  @moduledoc  """
  Text that must be formatted as if inside a code HTML tag.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_code.html).
  """

  defstruct "@type": "textEntityTypeCode", "@extra": nil
end
defmodule ChatReportReasonPornography do
  @moduledoc  """
  The chat contains pornographic messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_pornography.html).
  """

  defstruct "@type": "chatReportReasonPornography", "@extra": nil
end
defmodule MessageFileTypeGroup do
  @moduledoc  """
  The messages was exported from a group chat.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the group chat; may be empty if unrecognized. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_file_type_group.html).
  """

  defstruct "@type": "messageFileTypeGroup", "@extra": nil, title: nil
end
defmodule PremiumFeatures do
  @moduledoc  """
  Contains information about features, available to Premium users.

  | Name | Type | Description |
  |------|------| ------------|
  | features | PremiumFeature | The list of available features. |
  | limits | premiumLimit | The list of limits, increased for Premium users. |
  | payment_link | InternalLinkType | An internal link to be opened to pay for Telegram Premium if store payment isn't possible; may be null if direct payment isn't available. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_features.html).
  """

  defstruct "@type": "premiumFeatures", "@extra": nil, features: nil, limits: nil, payment_link: nil
end
defmodule NotificationTypeNewCall do
  @moduledoc  """
  New call was received.

  | Name | Type | Description |
  |------|------| ------------|
  | call_id | int32 | Call identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_type_new_call.html).
  """

  defstruct "@type": "notificationTypeNewCall", "@extra": nil, call_id: nil
end
defmodule UpdateMessageSendSucceeded do
  @moduledoc  """
  A message has been successfully sent.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | The sent message. Usually only the message identifier, date, and content are changed, but almost all other fields can also change. |
  | old_message_id | int53 | The previous temporary message identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_send_succeeded.html).
  """

  defstruct "@type": "updateMessageSendSucceeded", "@extra": nil, message: nil, old_message_id: nil
end
defmodule ResetPasswordResult do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_reset_password_result.html).
  """

  defstruct "@type": "ResetPasswordResult", "@extra": nil
end
defmodule TMeUrlType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_t_me_url_type.html).
  """

  defstruct "@type": "TMeUrlType", "@extra": nil
end
defmodule PushMessageContentVideoNote do
  @moduledoc  """
  A video note message.

  | Name | Type | Description |
  |------|------| ------------|
  | video_note | videoNote | Message content; may be null. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_video_note.html).
  """

  defstruct "@type": "pushMessageContentVideoNote", "@extra": nil, video_note: nil, is_pinned: nil
end
defmodule TextEntityTypeMediaTimestamp do
  @moduledoc  """
  A media timestamp.

  | Name | Type | Description |
  |------|------| ------------|
  | media_timestamp | int32 | Timestamp from which a video/audio/video note/voice note playing must start, in seconds. The media can be in the content or the web page preview of the current message, or in the same places in the replied message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_media_timestamp.html).
  """

  defstruct "@type": "textEntityTypeMediaTimestamp", "@extra": nil, media_timestamp: nil
end
defmodule MessageSenderChat do
  @moduledoc  """
  The message was sent on behalf of a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Identifier of the chat that sent the message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sender_chat.html).
  """

  defstruct "@type": "messageSenderChat", "@extra": nil, chat_id: nil
end
defmodule PremiumFeaturePromotionAnimation do
  @moduledoc  """
  Describes a promotion animation for a Premium feature.

  | Name | Type | Description |
  |------|------| ------------|
  | feature | PremiumFeature | Premium feature. |
  | animation | animation | Promotion animation for the feature. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_promotion_animation.html).
  """

  defstruct "@type": "premiumFeaturePromotionAnimation", "@extra": nil, feature: nil, animation: nil
end
defmodule GroupCallParticipant do
  @moduledoc  """
  Represents a group call participant.

  | Name | Type | Description |
  |------|------| ------------|
  | participant_id | MessageSender | Identifier of the group call participant. |
  | audio_source_id | int32 | User's audio channel synchronization source identifier. |
  | screen_sharing_audio_source_id | int32 | User's screen sharing audio channel synchronization source identifier. |
  | video_info | groupCallParticipantVideoInfo | Information about user's video channel; may be null if there is no active video. |
  | screen_sharing_video_info | groupCallParticipantVideoInfo | Information about user's screen sharing video channel; may be null if there is no active screen sharing video. |
  | bio | string | The participant user's bio or the participant chat's description. |
  | is_current_user | bool | True, if the participant is the current user. |
  | is_speaking | bool | True, if the participant is speaking as set by <a class="el" href="classtd_1_1td__api_1_1set_group_call_participant_is_speaking.html">setGroupCallParticipantIsSpeaking</a>. |
  | is_hand_raised | bool | True, if the participant hand is raised. |
  | can_be_muted_for_all_users | bool | True, if the current user can mute the participant for all other group call participants. |
  | can_be_unmuted_for_all_users | bool | True, if the current user can allow the participant to unmute themselves or unmute the participant (if the participant is the current user). |
  | can_be_muted_for_current_user | bool | True, if the current user can mute the participant only for self. |
  | can_be_unmuted_for_current_user | bool | True, if the current user can unmute the participant for self. |
  | is_muted_for_all_users | bool | True, if the participant is muted for all users. |
  | is_muted_for_current_user | bool | True, if the participant is muted for the current user. |
  | can_unmute_self | bool | True, if the participant is muted for all users, but can unmute themselves. |
  | volume_level | int32 | Participant's volume level; 1-20000 in hundreds of percents. |
  | order | string | User's order in the group call participant list. Orders must be compared lexicographically. The bigger is order, the higher is user in the list. If order is empty, the user must be removed from the participant list. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_participant.html).
  """

  defstruct "@type": "groupCallParticipant", "@extra": nil, participant_id: nil, audio_source_id: nil, screen_sharing_audio_source_id: nil, video_info: nil, screen_sharing_video_info: nil, bio: nil, is_current_user: nil, is_speaking: nil, is_hand_raised: nil, can_be_muted_for_all_users: nil, can_be_unmuted_for_all_users: nil, can_be_muted_for_current_user: nil, can_be_unmuted_for_current_user: nil, is_muted_for_all_users: nil, is_muted_for_current_user: nil, can_unmute_self: nil, volume_level: nil, order: nil
end
defmodule CallProblemPixelatedVideo do
  @moduledoc  """
  The video was pixelated.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_pixelated_video.html).
  """

  defstruct "@type": "callProblemPixelatedVideo", "@extra": nil
end
defmodule SessionTypeVivaldi do
  @moduledoc  """
  The session is running on the Vivaldi browser.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_vivaldi.html).
  """

  defstruct "@type": "sessionTypeVivaldi", "@extra": nil
end
defmodule InputFile do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_file.html).
  """

  defstruct "@type": "InputFile", "@extra": nil
end
defmodule UpdateOption do
  @moduledoc  """
  An option changed its value.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | The option name. |
  | value | OptionValue | The new option value. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_option.html).
  """

  defstruct "@type": "updateOption", "@extra": nil, name: nil, value: nil
end
defmodule ChatActionChoosingSticker do
  @moduledoc  """
  The user is picking a sticker to send.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_choosing_sticker.html).
  """

  defstruct "@type": "chatActionChoosingSticker", "@extra": nil
end
defmodule NetworkTypeOther do
  @moduledoc  """
  A different network type (e.g., Ethernet network).


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_other.html).
  """

  defstruct "@type": "networkTypeOther", "@extra": nil
end
defmodule DeviceTokenFirebaseCloudMessaging do
  @moduledoc  """
  A token for Firebase Cloud Messaging.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | Device registration token; may be empty to deregister a device. |
  | encrypt | bool | True, if push notifications must be additionally encrypted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_firebase_cloud_messaging.html).
  """

  defstruct "@type": "deviceTokenFirebaseCloudMessaging", "@extra": nil, token: nil, encrypt: nil
end
defmodule StatisticalGraphAsync do
  @moduledoc  """
  The graph data to be asynchronously loaded through getStatisticalGraph.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | The token to use for data loading. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1statistical_graph_async.html).
  """

  defstruct "@type": "statisticalGraphAsync", "@extra": nil, token: nil
end
defmodule InternalLinkTypeThemeSettings do
  @moduledoc  """
  The link is a link to the theme settings section of the app.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_theme_settings.html).
  """

  defstruct "@type": "internalLinkTypeThemeSettings", "@extra": nil
end
defmodule TestInt do
  @moduledoc  """
  A simple object containing a number; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | int32 | Number. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_int.html).
  """

  defstruct "@type": "testInt", "@extra": nil, value: nil
end
defmodule ChatFilterInfo do
  @moduledoc  """
  Contains basic information about a chat filter.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Unique chat filter identifier. |
  | title | string | The title of the filter; 1-12 characters without line feeds. |
  | icon_name | string | The chosen or default icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette". |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_filter_info.html).
  """

  defstruct "@type": "chatFilterInfo", "@extra": nil, id: nil, title: nil, icon_name: nil
end
defmodule CheckChatUsernameResultUsernameInvalid do
  @moduledoc  """
  The username is invalid.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_username_invalid.html).
  """

  defstruct "@type": "checkChatUsernameResultUsernameInvalid", "@extra": nil
end
defmodule UpdateChatTitle do
  @moduledoc  """
  The title of a chat was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | title | string | The new chat title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_title.html).
  """

  defstruct "@type": "updateChatTitle", "@extra": nil, chat_id: nil, title: nil
end
defmodule SearchMessagesFilterPhotoAndVideo do
  @moduledoc  """
  Returns only photo and video messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_photo_and_video.html).
  """

  defstruct "@type": "searchMessagesFilterPhotoAndVideo", "@extra": nil
end
defmodule UpdateSavedNotificationSounds do
  @moduledoc  """
  The list of saved notifications sounds was updated. This update may not be sent until information about a notification sound was requested for the first time.

  | Name | Type | Description |
  |------|------| ------------|
  | notification_sound_ids | int64 | The new list of identifiers of saved notification sounds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_saved_notification_sounds.html).
  """

  defstruct "@type": "updateSavedNotificationSounds", "@extra": nil, notification_sound_ids: nil
end
defmodule SecretChat do
  @moduledoc  """
  Represents a secret chat.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Secret chat identifier. |
  | user_id | int53 | Identifier of the chat partner. |
  | state | SecretChatState | State of the secret chat. |
  | is_outbound | bool | True, if the chat was created by the current user; otherwise false. |
  | key_hash | bytes | Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 little-endian bytes, which must be split into groups of 2 bits, each denoting a pixel of one of 4 colors FFFFFF, D5E6F3, 2D5775, and 2F99C9. The pixels must be used to make a 12x12 square image filled from left to right, top to bottom. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers. |
  | layer | int32 | Secret chat layer; determines features supported by the chat partner's application. Nested text entities and underline and strikethrough entities are supported if the layer >= 101, files bigger than 2000MB are supported if the layer >= 143. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat.html).
  """

  defstruct "@type": "secretChat", "@extra": nil, id: nil, user_id: nil, state: nil, is_outbound: nil, key_hash: nil, layer: nil
end
defmodule UpdateUserStatus do
  @moduledoc  """
  The user went online or offline.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier. |
  | status | UserStatus | New status of the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_status.html).
  """

  defstruct "@type": "updateUserStatus", "@extra": nil, user_id: nil, status: nil
end
defmodule CustomRequestResult do
  @moduledoc  """
  Contains the result of a custom request.

  | Name | Type | Description |
  |------|------| ------------|
  | result | string | A JSON-serialized result. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1custom_request_result.html).
  """

  defstruct "@type": "customRequestResult", "@extra": nil, result: nil
end
defmodule ThumbnailFormatPng do
  @moduledoc  """
  The thumbnail is in PNG format. It will be used only for background patterns.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_png.html).
  """

  defstruct "@type": "thumbnailFormatPng", "@extra": nil
end
defmodule ResetPasswordResultDeclined do
  @moduledoc  """
  The password reset request was declined.

  | Name | Type | Description |
  |------|------| ------------|
  | retry_date | int32 | Point in time (Unix timestamp) when the password reset can be retried. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reset_password_result_declined.html).
  """

  defstruct "@type": "resetPasswordResultDeclined", "@extra": nil, retry_date: nil
end
defmodule ChatLocation do
  @moduledoc  """
  Represents a location to which a chat is connected.

  | Name | Type | Description |
  |------|------| ------------|
  | location | location | The location. |
  | address | string | Location address; 1-64 characters, as defined by the chat owner. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_location.html).
  """

  defstruct "@type": "chatLocation", "@extra": nil, location: nil, address: nil
end
defmodule InputMessageVideoNote do
  @moduledoc  """
  A video note message.

  | Name | Type | Description |
  |------|------| ------------|
  | video_note | InputFile | Video note to be sent. |
  | thumbnail | inputThumbnail | Video thumbnail; pass null to skip thumbnail uploading. |
  | duration | int32 | Duration of the video, in seconds. |
  | length | int32 | Video width and height; must be positive and not greater than 640. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_video_note.html).
  """

  defstruct "@type": "inputMessageVideoNote", "@extra": nil, video_note: nil, thumbnail: nil, duration: nil, length: nil
end
defmodule InlineQueryResultSticker do
  @moduledoc  """
  Represents a sticker.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | sticker | sticker | Sticker. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_sticker.html).
  """

  defstruct "@type": "inlineQueryResultSticker", "@extra": nil, id: nil, sticker: nil
end
defmodule ChatList do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_list.html).
  """

  defstruct "@type": "ChatList", "@extra": nil
end
defmodule LanguagePackInfo do
  @moduledoc  """
  Contains information about a language pack.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique language pack identifier. |
  | base_language_pack_id | string | Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it must be fetched from base language pack. Unsupported in custom language packs. |
  | name | string | Language name. |
  | native_name | string | Name of the language in that language. |
  | plural_code | string | A language code to be used to apply plural forms. See <a href="https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html">https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html</a> for more information. |
  | is_official | bool | True, if the language pack is official. |
  | is_rtl | bool | True, if the language pack strings are RTL. |
  | is_beta | bool | True, if the language pack is a beta language pack. |
  | is_installed | bool | True, if the language pack is installed by the current user. |
  | total_string_count | int32 | Total number of non-deleted strings from the language pack. |
  | translated_string_count | int32 | Total number of translated strings from the language pack. |
  | local_string_count | int32 | Total number of non-deleted strings from the language pack available locally. |
  | translation_url | string | Link to language translation interface; empty for custom local language packs. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_info.html).
  """

  defstruct "@type": "languagePackInfo", "@extra": nil, id: nil, base_language_pack_id: nil, name: nil, native_name: nil, plural_code: nil, is_official: nil, is_rtl: nil, is_beta: nil, is_installed: nil, total_string_count: nil, translated_string_count: nil, local_string_count: nil, translation_url: nil
end
defmodule PersonalDocument do
  @moduledoc  """
  A personal document, containing some information about a user.

  | Name | Type | Description |
  |------|------| ------------|
  | files | datedFile | List of files containing the pages of the document. |
  | translation | datedFile | List of files containing a certified English translation of the document. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1personal_document.html).
  """

  defstruct "@type": "personalDocument", "@extra": nil, files: nil, translation: nil
end
defmodule AccountTtl do
  @moduledoc  """
  Contains information about the period of inactivity after which the current user's account will automatically be deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | days | int32 | Number of days of inactivity before the account will be flagged for deletion; 30-366 days. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1account_ttl.html).
  """

  defstruct "@type": "accountTtl", "@extra": nil, days: nil
end
defmodule MessageSendingStatePending do
  @moduledoc  """
  The message is being sent now, but has not yet been delivered to the server.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sending_state_pending.html).
  """

  defstruct "@type": "messageSendingStatePending", "@extra": nil
end
defmodule MessageVideoChatScheduled do
  @moduledoc  """
  A new video chat was scheduled.

  | Name | Type | Description |
  |------|------| ------------|
  | group_call_id | int32 | Identifier of the video chat. The video chat can be received through the method <a class="el" href="classtd_1_1td__api_1_1get_group_call.html">getGroupCall</a>. |
  | start_date | int32 | Point in time (Unix timestamp) when the group call is supposed to be started by an administrator. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video_chat_scheduled.html).
  """

  defstruct "@type": "messageVideoChatScheduled", "@extra": nil, group_call_id: nil, start_date: nil
end
defmodule UpdateRecentStickers do
  @moduledoc  """
  The list of recently used stickers was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | is_attached | bool | True, if the list of stickers attached to photo or video files was updated, otherwise the list of sent stickers is updated. |
  | sticker_ids | int32 | The new list of file identifiers of recently used stickers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_recent_stickers.html).
  """

  defstruct "@type": "updateRecentStickers", "@extra": nil, is_attached: nil, sticker_ids: nil
end
defmodule InternalLinkTypeQrCodeAuthentication do
  @moduledoc  """
  The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to "This code can be used to allow someone to log in to your Telegram account. To confirm Telegram login, please go to Settings > Devices > Scan QR and scan the code" needs to be shown.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_qr_code_authentication.html).
  """

  defstruct "@type": "internalLinkTypeQrCodeAuthentication", "@extra": nil
end
defmodule CallProblemNoise do
  @moduledoc  """
  The user heard background noise.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_noise.html).
  """

  defstruct "@type": "callProblemNoise", "@extra": nil
end
defmodule BotCommandScopeAllGroupChats do
  @moduledoc  """
  A scope covering all group and supergroup chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_all_group_chats.html).
  """

  defstruct "@type": "botCommandScopeAllGroupChats", "@extra": nil
end
defmodule PaymentReceipt do
  @moduledoc  """
  Contains information about a successful payment.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Product title. |
  | description | formattedText | Product description. |
  | photo | photo | Product photo; may be null. |
  | date | int32 | Point in time (Unix timestamp) when the payment was made. |
  | seller_bot_user_id | int53 | User identifier of the seller bot. |
  | payment_provider_user_id | int53 | User identifier of the payment provider bot. |
  | invoice | invoice | Information about the invoice. |
  | order_info | orderInfo | Order information; may be null. |
  | shipping_option | shippingOption | Chosen shipping option; may be null. |
  | credentials_title | string | Title of the saved credentials chosen by the buyer. |
  | tip_amount | int53 | The amount of tip chosen by the buyer in the smallest units of the currency. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_receipt.html).
  """

  defstruct "@type": "paymentReceipt", "@extra": nil, title: nil, description: nil, photo: nil, date: nil, seller_bot_user_id: nil, payment_provider_user_id: nil, invoice: nil, order_info: nil, shipping_option: nil, credentials_title: nil, tip_amount: nil
end
defmodule PhotoSize do
  @moduledoc  """
  Describes an image in JPEG format.

  | Name | Type | Description |
  |------|------| ------------|
  | type | string | Image type (see <a href="https://core.telegram.org/constructor/photoSize">https://core.telegram.org/constructor/photoSize</a>). |
  | photo | file | Information about the image file. |
  | width | int32 | Image width. |
  | height | int32 | Image height. |
  | progressive_sizes | int32 | Sizes of progressive JPEG file prefixes, which can be used to preliminarily show the image; in bytes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1photo_size.html).
  """

  defstruct "@type": "photoSize", "@extra": nil, type: nil, photo: nil, width: nil, height: nil, progressive_sizes: nil
end
defmodule MessageChatSetTheme do
  @moduledoc  """
  A theme in the chat has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | theme_name | string | If non-empty, name of a new theme, set for the chat. Otherwise chat theme was reset to the default one. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_set_theme.html).
  """

  defstruct "@type": "messageChatSetTheme", "@extra": nil, theme_name: nil
end
defmodule UpdateChatOnlineMemberCount do
  @moduledoc  """
  The number of online group members has changed. This update with non-zero number of online group members is sent only for currently opened chats. There is no guarantee that it will be sent just after the number of online users has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Identifier of the chat. |
  | online_member_count | int32 | New number of online members in the chat, or 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_online_member_count.html).
  """

  defstruct "@type": "updateChatOnlineMemberCount", "@extra": nil, chat_id: nil, online_member_count: nil
end
defmodule UpdateChatUnreadMentionCount do
  @moduledoc  """
  The chat unread_mention_count has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | unread_mention_count | int32 | The number of unread mention messages left in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_unread_mention_count.html).
  """

  defstruct "@type": "updateChatUnreadMentionCount", "@extra": nil, chat_id: nil, unread_mention_count: nil
end
defmodule RichTextStrikethrough do
  @moduledoc  """
  A strikethrough rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_strikethrough.html).
  """

  defstruct "@type": "richTextStrikethrough", "@extra": nil, text: nil
end
defmodule UpdateFileDownload do
  @moduledoc  """
  A file download was changed. This update is sent only after file download list is loaded for the first time.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | int32 | File identifier. |
  | complete_date | int32 | Point in time (Unix timestamp) when the file downloading was completed; 0 if the file downloading isn't completed. |
  | is_paused | bool | True, if downloading of the file is paused. |
  | counts | downloadedFileCounts | New number of being downloaded and recently downloaded files found. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_download.html).
  """

  defstruct "@type": "updateFileDownload", "@extra": nil, file_id: nil, complete_date: nil, is_paused: nil, counts: nil
end
defmodule AuthorizationStateWaitPhoneNumber do
  @moduledoc  """
  TDLib needs the user's phone number to authorize. Call setAuthenticationPhoneNumber to provide the phone number, or use requestQrCodeAuthentication, or checkAuthenticationBotToken for other authentication options.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_phone_number.html).
  """

  defstruct "@type": "authorizationStateWaitPhoneNumber", "@extra": nil
end
defmodule DeviceToken do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_device_token.html).
  """

  defstruct "@type": "DeviceToken", "@extra": nil
end
defmodule PageBlockPhoto do
  @moduledoc  """
  A photo.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | photo | Photo file; may be null. |
  | caption | pageBlockCaption | Photo caption. |
  | url | string | URL that needs to be opened when the photo is clicked. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_photo.html).
  """

  defstruct "@type": "pageBlockPhoto", "@extra": nil, photo: nil, caption: nil, url: nil
end
defmodule ChatPermissions do
  @moduledoc  """
  Describes actions that a user is allowed to take in a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | can_send_messages | bool | True, if the user can send text messages, contacts, locations, and venues. |
  | can_send_media_messages | bool | True, if the user can send audio files, documents, photos, videos, video notes, and voice notes. Implies can_send_messages permissions. |
  | can_send_polls | bool | True, if the user can send polls. Implies can_send_messages permissions. |
  | can_send_other_messages | bool | True, if the user can send animations, games, stickers, and dice and use inline bots. Implies can_send_messages permissions. |
  | can_add_web_page_previews | bool | True, if the user may add a web page preview to their messages. Implies can_send_messages permissions. |
  | can_change_info | bool | True, if the user can change the chat title, photo, and other settings. |
  | can_invite_users | bool | True, if the user can invite new users to the chat. |
  | can_pin_messages | bool | True, if the user can pin messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_permissions.html).
  """

  defstruct "@type": "chatPermissions", "@extra": nil, can_send_messages: nil, can_send_media_messages: nil, can_send_polls: nil, can_send_other_messages: nil, can_add_web_page_previews: nil, can_change_info: nil, can_invite_users: nil, can_pin_messages: nil
end
defmodule UserPrivacySettingShowStatus do
  @moduledoc  """
  A privacy setting for managing whether the user's online status is visible.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_status.html).
  """

  defstruct "@type": "userPrivacySettingShowStatus", "@extra": nil
end
defmodule PassportElementTypePhoneNumber do
  @moduledoc  """
  A Telegram Passport element containing the user's phone number.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_phone_number.html).
  """

  defstruct "@type": "passportElementTypePhoneNumber", "@extra": nil
end
defmodule PushMessageContentPoll do
  @moduledoc  """
  A message with a poll.

  | Name | Type | Description |
  |------|------| ------------|
  | question | string | Poll question. |
  | is_regular | bool | True, if the poll is regular and not in quiz mode. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_poll.html).
  """

  defstruct "@type": "pushMessageContentPoll", "@extra": nil, question: nil, is_regular: nil, is_pinned: nil
end
defmodule ChatActionCancel do
  @moduledoc  """
  The user has canceled the previous action.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_cancel.html).
  """

  defstruct "@type": "chatActionCancel", "@extra": nil
end
defmodule MessageGameScore do
  @moduledoc  """
  A new high score was achieved in a game.

  | Name | Type | Description |
  |------|------| ------------|
  | game_message_id | int53 | Identifier of the message with the game, can be an identifier of a deleted message. |
  | game_id | int64 | Identifier of the game; may be different from the games presented in the message with the game. |
  | score | int32 | New score. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_game_score.html).
  """

  defstruct "@type": "messageGameScore", "@extra": nil, game_message_id: nil, game_id: nil, score: nil
end
defmodule ChatEventPhotoChanged do
  @moduledoc  """
  The chat photo was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_photo | chatPhoto | Previous chat photo value; may be null. |
  | new_photo | chatPhoto | New chat photo value; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_photo_changed.html).
  """

  defstruct "@type": "chatEventPhotoChanged", "@extra": nil, old_photo: nil, new_photo: nil
end
defmodule ChatMembersFilterContacts do
  @moduledoc  """
  Returns contacts of the user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_contacts.html).
  """

  defstruct "@type": "chatMembersFilterContacts", "@extra": nil
end
defmodule PassportElementTypePassport do
  @moduledoc  """
  A Telegram Passport element containing the user's passport.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_passport.html).
  """

  defstruct "@type": "passportElementTypePassport", "@extra": nil
end
defmodule UpdateNewInlineCallbackQuery do
  @moduledoc  """
  A new incoming callback query from a message sent via a bot; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Unique query identifier. |
  | sender_user_id | int53 | Identifier of the user who sent the query. |
  | inline_message_id | string | Identifier of the inline message from which the query originated. |
  | chat_instance | int64 | An identifier uniquely corresponding to the chat a message was sent to. |
  | payload | CallbackQueryPayload | Query payload. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_inline_callback_query.html).
  """

  defstruct "@type": "updateNewInlineCallbackQuery", "@extra": nil, id: nil, sender_user_id: nil, inline_message_id: nil, chat_instance: nil, payload: nil
end
defmodule PassportElementPassportRegistration do
  @moduledoc  """
  A Telegram Passport element containing the user's passport registration pages.

  | Name | Type | Description |
  |------|------| ------------|
  | passport_registration | personalDocument | Passport registration pages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_passport_registration.html).
  """

  defstruct "@type": "passportElementPassportRegistration", "@extra": nil, passport_registration: nil
end
defmodule PageBlockDetails do
  @moduledoc  """
  A collapsible block.

  | Name | Type | Description |
  |------|------| ------------|
  | header | RichText | Always visible heading for the block. |
  | page_blocks | PageBlock | Block contents. |
  | is_open | bool | True, if the block is open by default. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_details.html).
  """

  defstruct "@type": "pageBlockDetails", "@extra": nil, header: nil, page_blocks: nil, is_open: nil
end
defmodule JsonValue do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_json_value.html).
  """

  defstruct "@type": "JsonValue", "@extra": nil
end
defmodule FoundMessages do
  @moduledoc  """
  Contains a list of messages found by a search.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of messages found; -1 if unknown. |
  | messages | message | List of messages. |
  | next_offset | string | The offset for the next request. If empty, there are no more results. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_messages.html).
  """

  defstruct "@type": "foundMessages", "@extra": nil, total_count: nil, messages: nil, next_offset: nil
end
defmodule PaymentProvider do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_payment_provider.html).
  """

  defstruct "@type": "PaymentProvider", "@extra": nil
end
defmodule ChatEventMemberJoinedByInviteLink do
  @moduledoc  """
  A new member joined the chat via an invite link.

  | Name | Type | Description |
  |------|------| ------------|
  | invite_link | chatInviteLink | Invite link used to join the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_joined_by_invite_link.html).
  """

  defstruct "@type": "chatEventMemberJoinedByInviteLink", "@extra": nil, invite_link: nil
end
defmodule PollOption do
  @moduledoc  """
  Describes one answer option of a poll.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Option text; 1-100 characters. |
  | voter_count | int32 | Number of voters for this option, available only for closed or voted polls. |
  | vote_percentage | int32 | The percentage of votes for this option; 0-100. |
  | is_chosen | bool | True, if the option was chosen by the user. |
  | is_being_chosen | bool | True, if the option is being chosen by a pending <a class="el" href="classtd_1_1td__api_1_1set_poll_answer.html">setPollAnswer</a> request. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1poll_option.html).
  """

  defstruct "@type": "pollOption", "@extra": nil, text: nil, voter_count: nil, vote_percentage: nil, is_chosen: nil, is_being_chosen: nil
end
defmodule RichTextItalic do
  @moduledoc  """
  An italicized rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_italic.html).
  """

  defstruct "@type": "richTextItalic", "@extra": nil, text: nil
end
defmodule InputPersonalDocument do
  @moduledoc  """
  A personal document to be saved to Telegram Passport.

  | Name | Type | Description |
  |------|------| ------------|
  | files | InputFile | List of files containing the pages of the document. |
  | translation | InputFile | List of files containing a certified English translation of the document. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_personal_document.html).
  """

  defstruct "@type": "inputPersonalDocument", "@extra": nil, files: nil, translation: nil
end
defmodule CallId do
  @moduledoc  """
  Contains the call identifier.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Call identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_id.html).
  """

  defstruct "@type": "callId", "@extra": nil, id: nil
end
defmodule LogStreamFile do
  @moduledoc  """
  The log is written to a file.

  | Name | Type | Description |
  |------|------| ------------|
  | path | string | Path to the file to where the internal TDLib log will be written. |
  | max_file_size | int53 | The maximum size of the file to where the internal TDLib log is written before the file will automatically be rotated, in bytes. |
  | redirect_stderr | bool | Pass true to additionally redirect stderr to the log file. Ignored on Windows. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_stream_file.html).
  """

  defstruct "@type": "logStreamFile", "@extra": nil, path: nil, max_file_size: nil, redirect_stderr: nil
end
defmodule NotificationSettingsScope do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_notification_settings_scope.html).
  """

  defstruct "@type": "NotificationSettingsScope", "@extra": nil
end
defmodule InputMessageLocation do
  @moduledoc  """
  A message with a location.

  | Name | Type | Description |
  |------|------| ------------|
  | location | location | Location to be sent. |
  | live_period | int32 | Period for which the location can be updated, in seconds; must be between 60 and 86400 for a live location and 0 otherwise. |
  | heading | int32 | For live locations, a direction in which the location moves, in degrees; 1-360. Pass 0 if unknown. |
  | proximity_alert_radius | int32 | For live locations, a maximum distance to another chat member for proximity alerts, in meters (0-100000). Pass 0 if the notification is disabled. Can't be enabled in channels and Saved Messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_location.html).
  """

  defstruct "@type": "inputMessageLocation", "@extra": nil, location: nil, live_period: nil, heading: nil, proximity_alert_radius: nil
end
defmodule AttachmentMenuBotColor do
  @moduledoc  """
  Describes a color to highlight a bot added to attachment menu.

  | Name | Type | Description |
  |------|------| ------------|
  | light_color | int32 | Color in the RGB24 format for light themes. |
  | dark_color | int32 | Color in the RGB24 format for dark themes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1attachment_menu_bot_color.html).
  """

  defstruct "@type": "attachmentMenuBotColor", "@extra": nil, light_color: nil, dark_color: nil
end
defmodule PaymentResult do
  @moduledoc  """
  Contains the result of a payment request.

  | Name | Type | Description |
  |------|------| ------------|
  | success | bool | True, if the payment request was successful; otherwise the verification_url will be non-empty. |
  | verification_url | string | URL for additional payment credentials verification. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_result.html).
  """

  defstruct "@type": "paymentResult", "@extra": nil, success: nil, verification_url: nil
end
defmodule DeviceTokenMicrosoftPushVoIP do
  @moduledoc  """
  A token for Microsoft Push Notification Service VoIP channel.

  | Name | Type | Description |
  |------|------| ------------|
  | channel_uri | string | Push notification channel URI; may be empty to deregister a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_microsoft_push_vo_i_p.html).
  """

  defstruct "@type": "deviceTokenMicrosoftPushVoIP", "@extra": nil, channel_uri: nil
end
defmodule InternalLinkTypePhoneNumberConfirmation do
  @moduledoc  """
  The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | hash | string | Hash value from the link. |
  | phone_number | string | Phone number value from the link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_phone_number_confirmation.html).
  """

  defstruct "@type": "internalLinkTypePhoneNumberConfirmation", "@extra": nil, hash: nil, phone_number: nil
end
defmodule MessageFileTypePrivate do
  @moduledoc  """
  The messages was exported from a private chat.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Name of the other party; may be empty if unrecognized. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_file_type_private.html).
  """

  defstruct "@type": "messageFileTypePrivate", "@extra": nil, name: nil
end
defmodule AnimatedEmoji do
  @moduledoc  """
  Describes an animated representation of an emoji.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | sticker | Animated sticker for the emoji. |
  | fitzpatrick_type | int32 | Emoji modifier fitzpatrick type; 0-6; 0 if none. |
  | sound | file | File containing the sound to be played when the animated emoji is clicked; may be null. The sound is encoded with the Opus codec, and stored inside an OGG container. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animated_emoji.html).
  """

  defstruct "@type": "animatedEmoji", "@extra": nil, sticker: nil, fitzpatrick_type: nil, sound: nil
end
defmodule CallServerTypeTelegramReflector do
  @moduledoc  """
  A Telegram call reflector.

  | Name | Type | Description |
  |------|------| ------------|
  | peer_tag | bytes | A peer tag to be used with the reflector. |
  | is_tcp | bool | True, if the server uses TCP instead of UDP. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_server_type_telegram_reflector.html).
  """

  defstruct "@type": "callServerTypeTelegramReflector", "@extra": nil, peer_tag: nil, is_tcp: nil
end
defmodule InternalLinkTypeInvoice do
  @moduledoc  """
  The link is a link to an invoice. Call getPaymentForm with the given invoice name to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | invoice_name | string | Name of the invoice. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_invoice.html).
  """

  defstruct "@type": "internalLinkTypeInvoice", "@extra": nil, invoice_name: nil
end
defmodule PremiumLimitTypeCreatedPublicChatCount do
  @moduledoc  """
  The maximum number of created public chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_created_public_chat_count.html).
  """

  defstruct "@type": "premiumLimitTypeCreatedPublicChatCount", "@extra": nil
end
defmodule InputInlineQueryResultContact do
  @moduledoc  """
  Represents a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | contact | contact | User contact. |
  | thumbnail_url | string | URL of the result thumbnail, if it exists. |
  | thumbnail_width | int32 | Thumbnail width, if known. |
  | thumbnail_height | int32 | Thumbnail height, if known. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_contact.html).
  """

  defstruct "@type": "inputInlineQueryResultContact", "@extra": nil, id: nil, contact: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule FileTypeVoiceNote do
  @moduledoc  """
  The file is a voice note.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_voice_note.html).
  """

  defstruct "@type": "fileTypeVoiceNote", "@extra": nil
end
defmodule NetworkTypeMobileRoaming do
  @moduledoc  """
  A mobile roaming network.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_mobile_roaming.html).
  """

  defstruct "@type": "networkTypeMobileRoaming", "@extra": nil
end
defmodule GameHighScore do
  @moduledoc  """
  Contains one row of the game high score table.

  | Name | Type | Description |
  |------|------| ------------|
  | position | int32 | Position in the high score table. |
  | user_id | int53 | User identifier. |
  | score | int32 | User score. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1game_high_score.html).
  """

  defstruct "@type": "gameHighScore", "@extra": nil, position: nil, user_id: nil, score: nil
end
defmodule ChatReportReasonSpam do
  @moduledoc  """
  The chat contains spam messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_spam.html).
  """

  defstruct "@type": "chatReportReasonSpam", "@extra": nil
end
defmodule UpdateChatMessageSender do
  @moduledoc  """
  The message sender that is selected to send messages in a chat has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_sender_id | MessageSender | New value of message_sender_id; may be null if the user can't change message sender. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_message_sender.html).
  """

  defstruct "@type": "updateChatMessageSender", "@extra": nil, chat_id: nil, message_sender_id: nil
end
defmodule ChatInviteLinkMembers do
  @moduledoc  """
  Contains a list of chat members joined a chat via an invite link.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of chat members found. |
  | members | chatInviteLinkMember | List of chat members, joined a chat via an invite link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link_members.html).
  """

  defstruct "@type": "chatInviteLinkMembers", "@extra": nil, total_count: nil, members: nil
end
defmodule InputPassportElement do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_passport_element.html).
  """

  defstruct "@type": "InputPassportElement", "@extra": nil
end
defmodule PassportElementTypeTemporaryRegistration do
  @moduledoc  """
  A Telegram Passport element containing the user's temporary registration.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_temporary_registration.html).
  """

  defstruct "@type": "passportElementTypeTemporaryRegistration", "@extra": nil
end
defmodule InputMessageVenue do
  @moduledoc  """
  A message with information about a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | venue | venue | Venue to send. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_venue.html).
  """

  defstruct "@type": "inputMessageVenue", "@extra": nil, venue: nil
end
defmodule MessageGame do
  @moduledoc  """
  A message with a game.

  | Name | Type | Description |
  |------|------| ------------|
  | game | game | The game description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_game.html).
  """

  defstruct "@type": "messageGame", "@extra": nil, game: nil
end
defmodule ProxyType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_proxy_type.html).
  """

  defstruct "@type": "ProxyType", "@extra": nil
end
defmodule PremiumFeatureVoiceRecognition do
  @moduledoc  """
  The ability to convert voice notes to text.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_voice_recognition.html).
  """

  defstruct "@type": "premiumFeatureVoiceRecognition", "@extra": nil
end
defmodule ChatActionBarAddContact do
  @moduledoc  """
  The chat is a private or secret chat and the other user can be added to the contact list using the method addContact.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_add_contact.html).
  """

  defstruct "@type": "chatActionBarAddContact", "@extra": nil
end
defmodule PageBlockList do
  @moduledoc  """
  A list of data blocks.

  | Name | Type | Description |
  |------|------| ------------|
  | items | pageBlockListItem | The items of the list. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_list.html).
  """

  defstruct "@type": "pageBlockList", "@extra": nil, items: nil
end
defmodule ChatMemberStatus do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_member_status.html).
  """

  defstruct "@type": "ChatMemberStatus", "@extra": nil
end
defmodule UpdateFile do
  @moduledoc  """
  Information about a file was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | file | file | New data about the file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file.html).
  """

  defstruct "@type": "updateFile", "@extra": nil, file: nil
end
defmodule SessionTypeUbuntu do
  @moduledoc  """
  The session is running on an Ubuntu device.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_ubuntu.html).
  """

  defstruct "@type": "sessionTypeUbuntu", "@extra": nil
end
defmodule UpdateNewChat do
  @moduledoc  """
  A new chat has been loaded/created. This update is guaranteed to come before the chat identifier is returned to the application. The chat field changes will be reported through separate updates.

  | Name | Type | Description |
  |------|------| ------------|
  | chat | chat | The chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_chat.html).
  """

  defstruct "@type": "updateNewChat", "@extra": nil, chat: nil
end
defmodule Reaction do
  @moduledoc  """
  Contains stickers which must be used for reaction animation rendering.

  | Name | Type | Description |
  |------|------| ------------|
  | reaction | string | Text representation of the reaction. |
  | title | string | Reaction title. |
  | is_active | bool | True, if the reaction can be added to new messages and enabled in chats. |
  | is_premium | bool | True, if the reaction is available only for Premium users. |
  | static_icon | sticker | Static icon for the reaction. |
  | appear_animation | sticker | Appear animation for the reaction. |
  | select_animation | sticker | Select animation for the reaction. |
  | activate_animation | sticker | Activate animation for the reaction. |
  | effect_animation | sticker | Effect animation for the reaction. |
  | around_animation | sticker | Around animation for the reaction; may be null. |
  | center_animation | sticker | Center animation for the reaction; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reaction.html).
  """

  defstruct "@type": "reaction", "@extra": nil, reaction: nil, title: nil, is_active: nil, is_premium: nil, static_icon: nil, appear_animation: nil, select_animation: nil, activate_animation: nil, effect_animation: nil, around_animation: nil, center_animation: nil
end
defmodule AuthenticationCodeTypeMissedCall do
  @moduledoc  """
  An authentication code is delivered by an immediately canceled call to the specified phone number. The last digits of the phone number that calls are the code that must be entered manually by the user.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number_prefix | string | Prefix of the phone number from which the call will be made. |
  | length | int32 | Number of digits in the code, excluding the prefix. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_missed_call.html).
  """

  defstruct "@type": "authenticationCodeTypeMissedCall", "@extra": nil, phone_number_prefix: nil, length: nil
end
defmodule TopChatCategoryCalls do
  @moduledoc  """
  A category containing frequently used chats used for calls.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_calls.html).
  """

  defstruct "@type": "topChatCategoryCalls", "@extra": nil
end
defmodule PublicChatTypeHasUsername do
  @moduledoc  """
  The chat is public, because it has username.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1public_chat_type_has_username.html).
  """

  defstruct "@type": "publicChatTypeHasUsername", "@extra": nil
end
defmodule DeviceTokenBlackBerryPush do
  @moduledoc  """
  A token for BlackBerry Push Service.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | Token; may be empty to deregister a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_black_berry_push.html).
  """

  defstruct "@type": "deviceTokenBlackBerryPush", "@extra": nil, token: nil
end
defmodule InputMessageVideo do
  @moduledoc  """
  A video message.

  | Name | Type | Description |
  |------|------| ------------|
  | video | InputFile | Video to be sent. |
  | thumbnail | inputThumbnail | Video thumbnail; pass null to skip thumbnail uploading. |
  | added_sticker_file_ids | int32 | File identifiers of the stickers added to the video, if applicable. |
  | duration | int32 | Duration of the video, in seconds. |
  | width | int32 | Video width. |
  | height | int32 | Video height. |
  | supports_streaming | bool | True, if the video is supposed to be streamed. |
  | caption | formattedText | Video caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters. |
  | ttl | int32 | Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_video.html).
  """

  defstruct "@type": "inputMessageVideo", "@extra": nil, video: nil, thumbnail: nil, added_sticker_file_ids: nil, duration: nil, width: nil, height: nil, supports_streaming: nil, caption: nil, ttl: nil
end
defmodule VectorPathCommand do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_vector_path_command.html).
  """

  defstruct "@type": "VectorPathCommand", "@extra": nil
end
defmodule SupergroupFullInfo do
  @moduledoc  """
  Contains full information about a supergroup or channel.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | chatPhoto | Chat photo; may be null. |
  | description | string | Supergroup or channel description. |
  | member_count | int32 | Number of members in the supergroup or channel; 0 if unknown. |
  | administrator_count | int32 | Number of privileged users in the supergroup or channel; 0 if unknown. |
  | restricted_count | int32 | Number of restricted users in the supergroup; 0 if unknown. |
  | banned_count | int32 | Number of users banned from chat; 0 if unknown. |
  | linked_chat_id | int53 | Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown. |
  | slow_mode_delay | int32 | Delay between consecutive sent messages for non-administrator supergroup members, in seconds. |
  | slow_mode_delay_expires_in | double | Time left before next message can be sent in the supergroup, in seconds. An <a class="el" href="classtd_1_1td__api_1_1update_supergroup_full_info.html">updateSupergroupFullInfo</a> update is not triggered when value of this field changes, but both new and old values are non-zero. |
  | can_get_members | bool | True, if members of the chat can be retrieved. |
  | can_set_username | bool | True, if the chat username can be changed. |
  | can_set_sticker_set | bool | True, if the supergroup sticker set can be changed. |
  | can_set_location | bool | True, if the supergroup location can be changed. |
  | can_get_statistics | bool | True, if the supergroup or channel statistics are available. |
  | is_all_history_available | bool | True, if new chat members will have access to old messages. In public or discussion groups and both public and private channels, old messages are always available, so this option affects only private supergroups without a linked chat. The value of this field is only available for chat administrators. |
  | sticker_set_id | int64 | Identifier of the supergroup sticker set; 0 if none. |
  | location | chatLocation | Location to which the supergroup is connected; may be null. |
  | invite_link | chatInviteLink | Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only. |
  | bot_commands | botCommands | List of commands of bots in the group. |
  | upgraded_from_basic_group_id | int53 | Identifier of the basic group from which supergroup was upgraded; 0 if none. |
  | upgraded_from_max_message_id | int53 | Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_full_info.html).
  """

  defstruct "@type": "supergroupFullInfo", "@extra": nil, photo: nil, description: nil, member_count: nil, administrator_count: nil, restricted_count: nil, banned_count: nil, linked_chat_id: nil, slow_mode_delay: nil, slow_mode_delay_expires_in: nil, can_get_members: nil, can_set_username: nil, can_set_sticker_set: nil, can_set_location: nil, can_get_statistics: nil, is_all_history_available: nil, sticker_set_id: nil, location: nil, invite_link: nil, bot_commands: nil, upgraded_from_basic_group_id: nil, upgraded_from_max_message_id: nil
end
defmodule MessageChatJoinByRequest do
  @moduledoc  """
  A new member was accepted to the chat by an administrator.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_join_by_request.html).
  """

  defstruct "@type": "messageChatJoinByRequest", "@extra": nil
end
defmodule UpdateNewShippingQuery do
  @moduledoc  """
  A new incoming shipping query; for bots only. Only for invoices with flexible price.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Unique query identifier. |
  | sender_user_id | int53 | Identifier of the user who sent the query. |
  | invoice_payload | string | Invoice payload. |
  | shipping_address | address | User shipping address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_shipping_query.html).
  """

  defstruct "@type": "updateNewShippingQuery", "@extra": nil, id: nil, sender_user_id: nil, invoice_payload: nil, shipping_address: nil
end
defmodule MessageForwardInfo do
  @moduledoc  """
  Contains information about a forwarded message.

  | Name | Type | Description |
  |------|------| ------------|
  | origin | MessageForwardOrigin | Origin of a forwarded message. |
  | date | int32 | Point in time (Unix timestamp) when the message was originally sent. |
  | public_service_announcement_type | string | The type of a public service announcement for the forwarded message. |
  | from_chat_id | int53 | For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the chat from which the message was forwarded last time; 0 if unknown. |
  | from_message_id | int53 | For messages forwarded to the chat with the current user (Saved Messages), to the Replies bot chat, or to the channel's discussion group, the identifier of the original message from which the new message was forwarded last time; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forward_info.html).
  """

  defstruct "@type": "messageForwardInfo", "@extra": nil, origin: nil, date: nil, public_service_announcement_type: nil, from_chat_id: nil, from_message_id: nil
end
defmodule MessageForwardOriginUser do
  @moduledoc  """
  The message was originally sent by a known user.

  | Name | Type | Description |
  |------|------| ------------|
  | sender_user_id | int53 | Identifier of the user that originally sent the message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forward_origin_user.html).
  """

  defstruct "@type": "messageForwardOriginUser", "@extra": nil, sender_user_id: nil
end
defmodule MaskPointChin do
  @moduledoc  """
  The mask is placed relatively to the chin.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_point_chin.html).
  """

  defstruct "@type": "maskPointChin", "@extra": nil
end
defmodule UpdateUsersNearby do
  @moduledoc  """
  The list of users nearby has changed. The update is guaranteed to be sent only 60 seconds after a successful searchChatsNearby request.

  | Name | Type | Description |
  |------|------| ------------|
  | users_nearby | chatNearby | The new list of users nearby. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_users_nearby.html).
  """

  defstruct "@type": "updateUsersNearby", "@extra": nil, users_nearby: nil
end
defmodule PassportElementTypePassportRegistration do
  @moduledoc  """
  A Telegram Passport element containing the registration page of the user's passport.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_passport_registration.html).
  """

  defstruct "@type": "passportElementTypePassportRegistration", "@extra": nil
end
defmodule TestVectorInt do
  @moduledoc  """
  A simple object containing a vector of numbers; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | int32 | Vector of numbers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_int.html).
  """

  defstruct "@type": "testVectorInt", "@extra": nil, value: nil
end
defmodule SuggestedActionViewChecksHint do
  @moduledoc  """
  Suggests the user to view a hint about the meaning of one and two check marks on sent messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_view_checks_hint.html).
  """

  defstruct "@type": "suggestedActionViewChecksHint", "@extra": nil
end
defmodule VideoChat do
  @moduledoc  """
  Describes a video chat.

  | Name | Type | Description |
  |------|------| ------------|
  | group_call_id | int32 | Group call identifier of an active video chat; 0 if none. Full information about the video chat can be received through the method <a class="el" href="classtd_1_1td__api_1_1get_group_call.html">getGroupCall</a>. |
  | has_participants | bool | True, if the video chat has participants. |
  | default_participant_id | MessageSender | Default group call participant identifier to join the video chat; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1video_chat.html).
  """

  defstruct "@type": "videoChat", "@extra": nil, group_call_id: nil, has_participants: nil, default_participant_id: nil
end
defmodule MessagePosition do
  @moduledoc  """
  Contains information about a message in a specific position.

  | Name | Type | Description |
  |------|------| ------------|
  | position | int32 | 0-based message position in the full list of suitable messages. |
  | message_id | int53 | Message identifier. |
  | date | int32 | Point in time (Unix timestamp) when the message was sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_position.html).
  """

  defstruct "@type": "messagePosition", "@extra": nil, position: nil, message_id: nil, date: nil
end
defmodule BotCommandScopeDefault do
  @moduledoc  """
  A scope covering all users.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_default.html).
  """

  defstruct "@type": "botCommandScopeDefault", "@extra": nil
end
defmodule PremiumLimitTypeFavoriteStickerCount do
  @moduledoc  """
  The maximum number of favorite stickers.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_favorite_sticker_count.html).
  """

  defstruct "@type": "premiumLimitTypeFavoriteStickerCount", "@extra": nil
end
defmodule MessageInteractionInfo do
  @moduledoc  """
  Contains information about interactions with a message.

  | Name | Type | Description |
  |------|------| ------------|
  | view_count | int32 | Number of times the message was viewed. |
  | forward_count | int32 | Number of times the message was forwarded. |
  | reply_info | messageReplyInfo | Information about direct or indirect replies to the message; may be null. Currently, available only in channels with a discussion supergroup and discussion supergroups for messages, which are not replies itself. |
  | reactions | messageReaction | The list of reactions added to the message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_interaction_info.html).
  """

  defstruct "@type": "messageInteractionInfo", "@extra": nil, view_count: nil, forward_count: nil, reply_info: nil, reactions: nil
end
defmodule ChatActionBarInviteMembers do
  @moduledoc  """
  The chat is a recently created group chat to which new members can be invited.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_invite_members.html).
  """

  defstruct "@type": "chatActionBarInviteMembers", "@extra": nil
end
defmodule InlineQueryResultAnimation do
  @moduledoc  """
  Represents an animation file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | animation | animation | Animation file. |
  | title | string | Animation title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_animation.html).
  """

  defstruct "@type": "inlineQueryResultAnimation", "@extra": nil, id: nil, animation: nil, title: nil
end
defmodule InternalLinkTypeProxy do
  @moduledoc  """
  The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy.

  | Name | Type | Description |
  |------|------| ------------|
  | server | string | Proxy server IP address. |
  | port | int32 | Proxy server port. |
  | type | ProxyType | Type of the proxy. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_proxy.html).
  """

  defstruct "@type": "internalLinkTypeProxy", "@extra": nil, server: nil, port: nil, type: nil
end
defmodule UserTypeDeleted do
  @moduledoc  """
  A deleted user or deleted bot. No information on the user besides the user identifier is available. It is not possible to perform any active actions on this type of user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_deleted.html).
  """

  defstruct "@type": "userTypeDeleted", "@extra": nil
end
defmodule UpdateSupergroup do
  @moduledoc  """
  Some data of a supergroup or a channel has changed. This update is guaranteed to come before the supergroup identifier is returned to the application.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup | supergroup | New data about the supergroup. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_supergroup.html).
  """

  defstruct "@type": "updateSupergroup", "@extra": nil, supergroup: nil
end
defmodule UpdateAttachmentMenuBots do
  @moduledoc  """
  The list of bots added to attachment menu has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | bots | attachmentMenuBot | The new list of bots added to attachment menu. The bots must not be shown on scheduled messages screen. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_attachment_menu_bots.html).
  """

  defstruct "@type": "updateAttachmentMenuBots", "@extra": nil, bots: nil
end
defmodule PaymentProviderStripe do
  @moduledoc  """
  Stripe payment provider.

  | Name | Type | Description |
  |------|------| ------------|
  | publishable_key | string | Stripe API publishable key. |
  | need_country | bool | True, if the user country must be provided. |
  | need_postal_code | bool | True, if the user ZIP/postal code must be provided. |
  | need_cardholder_name | bool | True, if the cardholder name must be provided. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_provider_stripe.html).
  """

  defstruct "@type": "paymentProviderStripe", "@extra": nil, publishable_key: nil, need_country: nil, need_postal_code: nil, need_cardholder_name: nil
end
defmodule CallStateError do
  @moduledoc  """
  The call has ended with an error.

  | Name | Type | Description |
  |------|------| ------------|
  | error | error | Error. An error with the code 4005000 will be returned if an outgoing call is missed because of an expired timeout. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_error.html).
  """

  defstruct "@type": "callStateError", "@extra": nil, error: nil
end
defmodule ChatNearby do
  @moduledoc  """
  Describes a chat located nearby.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | distance | int32 | Distance to the chat location, in meters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_nearby.html).
  """

  defstruct "@type": "chatNearby", "@extra": nil, chat_id: nil, distance: nil
end
defmodule PushMessageContentPhoto do
  @moduledoc  """
  A photo message.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | photo | Message content; may be null. |
  | caption | string | Photo caption. |
  | is_secret | bool | True, if the photo is secret. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_photo.html).
  """

  defstruct "@type": "pushMessageContentPhoto", "@extra": nil, photo: nil, caption: nil, is_secret: nil, is_pinned: nil
end
defmodule PhoneNumberInfo do
  @moduledoc  """
  Contains information about a phone number.

  | Name | Type | Description |
  |------|------| ------------|
  | country | countryInfo | Information about the country to which the phone number belongs; may be null. |
  | country_calling_code | string | The part of the phone number denoting country calling code or its part. |
  | formatted_phone_number | string | The phone number without country calling code formatted accordingly to local rules. Expected digits are returned as '-', but even more digits might be entered by the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1phone_number_info.html).
  """

  defstruct "@type": "phoneNumberInfo", "@extra": nil, country: nil, country_calling_code: nil, formatted_phone_number: nil
end
defmodule StickerTypeStatic do
  @moduledoc  """
  The sticker is an image in WEBP format.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_type_static.html).
  """

  defstruct "@type": "stickerTypeStatic", "@extra": nil
end
defmodule ChatEventLinkedChatChanged do
  @moduledoc  """
  The linked chat of a supergroup was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_linked_chat_id | int53 | Previous supergroup linked chat identifier. |
  | new_linked_chat_id | int53 | New supergroup linked chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_linked_chat_changed.html).
  """

  defstruct "@type": "chatEventLinkedChatChanged", "@extra": nil, old_linked_chat_id: nil, new_linked_chat_id: nil
end
defmodule ChatActionUploadingVoiceNote do
  @moduledoc  """
  The user is uploading a voice note.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | int32 | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_voice_note.html).
  """

  defstruct "@type": "chatActionUploadingVoiceNote", "@extra": nil, progress: nil
end
defmodule PageBlockHorizontalAlignmentRight do
  @moduledoc  """
  The content must be right-aligned.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_horizontal_alignment_right.html).
  """

  defstruct "@type": "pageBlockHorizontalAlignmentRight", "@extra": nil
end
defmodule SearchMessagesFilterAnimation do
  @moduledoc  """
  Returns only animation messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_animation.html).
  """

  defstruct "@type": "searchMessagesFilterAnimation", "@extra": nil
end
defmodule Invoice do
  @moduledoc  """
  Product invoice.

  | Name | Type | Description |
  |------|------| ------------|
  | currency | string | ISO 4217 currency code. |
  | price_parts | labeledPricePart | A list of objects used to calculate the total price of the product. |
  | max_tip_amount | int53 | The maximum allowed amount of tip in the smallest units of the currency. |
  | suggested_tip_amounts | int53 | Suggested amounts of tip in the smallest units of the currency. |
  | recurring_payment_terms_of_service_url | string | An HTTP URL with terms of service for recurring payments. If non-empty, the invoice payment will result in recurring payments and the user must accept the terms of service before allowed to pay. |
  | is_test | bool | True, if the payment is a test payment. |
  | need_name | bool | True, if the user's name is needed for payment. |
  | need_phone_number | bool | True, if the user's phone number is needed for payment. |
  | need_email_address | bool | True, if the user's email address is needed for payment. |
  | need_shipping_address | bool | True, if the user's shipping address is needed for payment. |
  | send_phone_number_to_provider | bool | True, if the user's phone number will be sent to the provider. |
  | send_email_address_to_provider | bool | True, if the user's email address will be sent to the provider. |
  | is_flexible | bool | True, if the total price depends on the shipping method. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1invoice.html).
  """

  defstruct "@type": "invoice", "@extra": nil, currency: nil, price_parts: nil, max_tip_amount: nil, suggested_tip_amounts: nil, recurring_payment_terms_of_service_url: nil, is_test: nil, need_name: nil, need_phone_number: nil, need_email_address: nil, need_shipping_address: nil, send_phone_number_to_provider: nil, send_email_address_to_provider: nil, is_flexible: nil
end
defmodule PageBlockSubheader do
  @moduledoc  """
  A subheader.

  | Name | Type | Description |
  |------|------| ------------|
  | subheader | RichText | Subheader. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_subheader.html).
  """

  defstruct "@type": "pageBlockSubheader", "@extra": nil, subheader: nil
end
defmodule UserPrivacySettingAllowFindingByPhoneNumber do
  @moduledoc  """
  A privacy setting for managing whether the user can be found by their phone number. Checked only if the phone number is not known to the other user. Can be set only to "Allow contacts" or "Allow all".


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_finding_by_phone_number.html).
  """

  defstruct "@type": "userPrivacySettingAllowFindingByPhoneNumber", "@extra": nil
end
defmodule PremiumFeatureAdvancedChatManagement do
  @moduledoc  """
  Ability to change position of the main chat list, archive and mute all new chats from non-contacts, and completely disable notifications about the user's contacts joined Telegram.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_advanced_chat_management.html).
  """

  defstruct "@type": "premiumFeatureAdvancedChatManagement", "@extra": nil
end
defmodule TrendingStickerSets do
  @moduledoc  """
  Represents a list of trending sticker sets.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of trending sticker sets. |
  | sets | stickerSetInfo | List of trending sticker sets. |
  | is_premium | bool | True, if the list contains sticker sets with premium stickers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1trending_sticker_sets.html).
  """

  defstruct "@type": "trendingStickerSets", "@extra": nil, total_count: nil, sets: nil, is_premium: nil
end
defmodule UpdateChatTheme do
  @moduledoc  """
  The chat theme was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | theme_name | string | The new name of the chat theme; may be empty if theme was reset to default. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_theme.html).
  """

  defstruct "@type": "updateChatTheme", "@extra": nil, chat_id: nil, theme_name: nil
end
defmodule UpdateReactions do
  @moduledoc  """
  The list of supported reactions has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | reactions | reaction | The new list of supported reactions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_reactions.html).
  """

  defstruct "@type": "updateReactions", "@extra": nil, reactions: nil
end
defmodule ThumbnailFormatJpeg do
  @moduledoc  """
  The thumbnail is in JPEG format.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_jpeg.html).
  """

  defstruct "@type": "thumbnailFormatJpeg", "@extra": nil
end
defmodule CallbackQueryPayload do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_callback_query_payload.html).
  """

  defstruct "@type": "CallbackQueryPayload", "@extra": nil
end
defmodule AttachmentMenuBot do
  @moduledoc  """
  Represents a bot added to attachment menu.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_user_id | int53 | User identifier of the bot added to attachment menu. |
  | supports_self_chat | bool | True, if the bot supports opening from attachment menu in the chat with the bot. |
  | supports_user_chats | bool | True, if the bot supports opening from attachment menu in private chats with ordinary users. |
  | supports_bot_chats | bool | True, if the bot supports opening from attachment menu in private chats with other bots. |
  | supports_group_chats | bool | True, if the bot supports opening from attachment menu in basic group and supergroup chats. |
  | supports_channel_chats | bool | True, if the bot supports opening from attachment menu in channel chats. |
  | supports_settings | bool | True, if the bot supports "settings_button_pressed" event. |
  | name | string | Name for the bot in attachment menu. |
  | name_color | attachmentMenuBotColor | Color to highlight selected name of the bot if appropriate; may be null. |
  | default_icon | file | Default attachment menu icon for the bot in SVG format; may be null. |
  | ios_static_icon | file | Attachment menu icon for the bot in SVG format for the official iOS app; may be null. |
  | ios_animated_icon | file | Attachment menu icon for the bot in TGS format for the official iOS app; may be null. |
  | android_icon | file | Attachment menu icon for the bot in TGS format for the official Android app; may be null. |
  | macos_icon | file | Attachment menu icon for the bot in TGS format for the official native macOS app; may be null. |
  | icon_color | attachmentMenuBotColor | Color to highlight selected icon of the bot if appropriate; may be null. |
  | web_app_placeholder | file | Default placeholder for opened Web Apps in SVG format; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1attachment_menu_bot.html).
  """

  defstruct "@type": "attachmentMenuBot", "@extra": nil, bot_user_id: nil, supports_self_chat: nil, supports_user_chats: nil, supports_bot_chats: nil, supports_group_chats: nil, supports_channel_chats: nil, supports_settings: nil, name: nil, name_color: nil, default_icon: nil, ios_static_icon: nil, ios_animated_icon: nil, android_icon: nil, macos_icon: nil, icon_color: nil, web_app_placeholder: nil
end
defmodule PageBlockListItem do
  @moduledoc  """
  Describes an item of a list page block.

  | Name | Type | Description |
  |------|------| ------------|
  | label | string | Item label. |
  | page_blocks | PageBlock | Item blocks. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_list_item.html).
  """

  defstruct "@type": "pageBlockListItem", "@extra": nil, label: nil, page_blocks: nil
end
defmodule ChatMemberStatusRestricted do
  @moduledoc  """
  The user is under certain restrictions in the chat. Not supported in basic groups and channels.

  | Name | Type | Description |
  |------|------| ------------|
  | is_member | bool | True, if the user is a member of the chat. |
  | restricted_until_date | int32 | Point in time (Unix timestamp) when restrictions will be lifted from the user; 0 if never. If the user is restricted for more than 366 days or for less than 30 seconds from the current time, the user is considered to be restricted forever. |
  | permissions | chatPermissions | User permissions in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_restricted.html).
  """

  defstruct "@type": "chatMemberStatusRestricted", "@extra": nil, is_member: nil, restricted_until_date: nil, permissions: nil
end
defmodule UpdateStickerSet do
  @moduledoc  """
  A sticker set has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker_set | stickerSet | The sticker set. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_sticker_set.html).
  """

  defstruct "@type": "updateStickerSet", "@extra": nil, sticker_set: nil
end
defmodule FileTypeUnknown do
  @moduledoc  """
  The file type is not yet known.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_unknown.html).
  """

  defstruct "@type": "fileTypeUnknown", "@extra": nil
end
defmodule PageBlockHorizontalAlignmentLeft do
  @moduledoc  """
  The content must be left-aligned.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_horizontal_alignment_left.html).
  """

  defstruct "@type": "pageBlockHorizontalAlignmentLeft", "@extra": nil
end
defmodule InputInlineQueryResultPhoto do
  @moduledoc  """
  Represents link to a JPEG image.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | title | string | Title of the result, if known. |
  | description | string | A short description of the result, if known. |
  | thumbnail_url | string | URL of the photo thumbnail, if it exists. |
  | photo_url | string | The URL of the JPEG photo (photo size must not exceed 5MB). |
  | photo_width | int32 | Width of the photo. |
  | photo_height | int32 | Height of the photo. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_photo.html">inputMessagePhoto</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_photo.html).
  """

  defstruct "@type": "inputInlineQueryResultPhoto", "@extra": nil, id: nil, title: nil, description: nil, thumbnail_url: nil, photo_url: nil, photo_width: nil, photo_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule PushMessageContentInvoice do
  @moduledoc  """
  A message with an invoice from a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | price | string | Product price. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_invoice.html).
  """

  defstruct "@type": "pushMessageContentInvoice", "@extra": nil, price: nil, is_pinned: nil
end
defmodule ReplyMarkupRemoveKeyboard do
  @moduledoc  """
  Instructs application to remove the keyboard once this message has been received. This kind of keyboard can't be received in an incoming message; instead, UpdateChatReplyMarkup with message_id == 0 will be sent.

  | Name | Type | Description |
  |------|------| ------------|
  | is_personal | bool | True, if the keyboard is removed only for the mentioned users or the target user of a reply. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_remove_keyboard.html).
  """

  defstruct "@type": "replyMarkupRemoveKeyboard", "@extra": nil, is_personal: nil
end
defmodule AuthenticationCodeTypeCall do
  @moduledoc  """
  An authentication code is delivered via a phone call to the specified phone number.

  | Name | Type | Description |
  |------|------| ------------|
  | length | int32 | Length of the code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_call.html).
  """

  defstruct "@type": "authenticationCodeTypeCall", "@extra": nil, length: nil
end
defmodule UpdateFileRemovedFromDownloads do
  @moduledoc  """
  A file was removed from the file download list. This update is sent only after file download list is loaded for the first time.

  | Name | Type | Description |
  |------|------| ------------|
  | file_id | int32 | File identifier. |
  | counts | downloadedFileCounts | New number of being downloaded and recently downloaded files found. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_removed_from_downloads.html).
  """

  defstruct "@type": "updateFileRemovedFromDownloads", "@extra": nil, file_id: nil, counts: nil
end
defmodule MessageSendingState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_sending_state.html).
  """

  defstruct "@type": "MessageSendingState", "@extra": nil
end
defmodule PassportElementTypeDriverLicense do
  @moduledoc  """
  A Telegram Passport element containing the user's driver license.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_driver_license.html).
  """

  defstruct "@type": "passportElementTypeDriverLicense", "@extra": nil
end
defmodule PremiumLimitType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_premium_limit_type.html).
  """

  defstruct "@type": "PremiumLimitType", "@extra": nil
end
defmodule InlineKeyboardButtonTypeSwitchInline do
  @moduledoc  """
  A button that forces an inline query to the bot to be inserted in the input field.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Inline query to be sent to the bot. |
  | in_current_chat | bool | True, if the inline query must be sent from the current chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_switch_inline.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeSwitchInline", "@extra": nil, query: nil, in_current_chat: nil
end
defmodule DraftMessage do
  @moduledoc  """
  Contains information about a message draft.

  | Name | Type | Description |
  |------|------| ------------|
  | reply_to_message_id | int53 | Identifier of the replied message; 0 if none. |
  | date | int32 | Point in time (Unix timestamp) when the draft was created. |
  | input_message_text | InputMessageContent | Content of the message draft; must be of the type <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1draft_message.html).
  """

  defstruct "@type": "draftMessage", "@extra": nil, reply_to_message_id: nil, date: nil, input_message_text: nil
end
defmodule UpdateFileAddedToDownloads do
  @moduledoc  """
  A file was added to the file download list. This update is sent only after file download list is loaded for the first time.

  | Name | Type | Description |
  |------|------| ------------|
  | file_download | fileDownload | The added file download. |
  | counts | downloadedFileCounts | New number of being downloaded and recently downloaded files found. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_added_to_downloads.html).
  """

  defstruct "@type": "updateFileAddedToDownloads", "@extra": nil, file_download: nil, counts: nil
end
defmodule GroupCallVideoQuality do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_group_call_video_quality.html).
  """

  defstruct "@type": "GroupCallVideoQuality", "@extra": nil
end
defmodule ThumbnailFormatTgs do
  @moduledoc  """
  The thumbnail is in TGS format. It will be used only for TGS sticker sets.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_tgs.html).
  """

  defstruct "@type": "thumbnailFormatTgs", "@extra": nil
end
defmodule InputPassportElementUtilityBill do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's utility bill.

  | Name | Type | Description |
  |------|------| ------------|
  | utility_bill | inputPersonalDocument | The utility bill to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_utility_bill.html).
  """

  defstruct "@type": "inputPassportElementUtilityBill", "@extra": nil, utility_bill: nil
end
defmodule Backgrounds do
  @moduledoc  """
  Contains a list of backgrounds.

  | Name | Type | Description |
  |------|------| ------------|
  | backgrounds | background | A list of backgrounds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1backgrounds.html).
  """

  defstruct "@type": "backgrounds", "@extra": nil, backgrounds: nil
end
defmodule PassportElementTypeUtilityBill do
  @moduledoc  """
  A Telegram Passport element containing the user's utility bill.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_utility_bill.html).
  """

  defstruct "@type": "passportElementTypeUtilityBill", "@extra": nil
end
defmodule ChatReportReasonCustom do
  @moduledoc  """
  A custom reason provided by the user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_custom.html).
  """

  defstruct "@type": "chatReportReasonCustom", "@extra": nil
end
defmodule UpdateChatReadOutbox do
  @moduledoc  """
  Outgoing messages were read.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | last_read_outbox_message_id | int53 | Identifier of last read outgoing message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_read_outbox.html).
  """

  defstruct "@type": "updateChatReadOutbox", "@extra": nil, chat_id: nil, last_read_outbox_message_id: nil
end
defmodule Background do
  @moduledoc  """
  Describes a chat background.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Unique background identifier. |
  | is_default | bool | True, if this is one of default backgrounds. |
  | is_dark | bool | True, if the background is dark and is recommended to be used with dark theme. |
  | name | string | Unique background name. |
  | document | document | Document with the background; may be null. Null only for filled backgrounds. |
  | type | BackgroundType | Type of the background. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background.html).
  """

  defstruct "@type": "background", "@extra": nil, id: nil, is_default: nil, is_dark: nil, name: nil, document: nil, type: nil
end
defmodule UpdateMessageContentOpened do
  @moduledoc  """
  The message content was opened. Updates voice note messages to "listened", video note messages to "viewed" and starts the TTL timer for self-destructing messages.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_id | int53 | Message identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_content_opened.html).
  """

  defstruct "@type": "updateMessageContentOpened", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule BackgroundType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_background_type.html).
  """

  defstruct "@type": "BackgroundType", "@extra": nil
end
defmodule PageBlockAudio do
  @moduledoc  """
  An audio file.

  | Name | Type | Description |
  |------|------| ------------|
  | audio | audio | Audio file; may be null. |
  | caption | pageBlockCaption | Audio file caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_audio.html).
  """

  defstruct "@type": "pageBlockAudio", "@extra": nil, audio: nil, caption: nil
end
defmodule InputBackgroundLocal do
  @moduledoc  """
  A background from a local file.

  | Name | Type | Description |
  |------|------| ------------|
  | background | InputFile | Background file to use. Only <a class="el" href="classtd_1_1td__api_1_1input_file_local.html">inputFileLocal</a> and <a class="el" href="classtd_1_1td__api_1_1input_file_generated.html">inputFileGenerated</a> are supported. The file must be in JPEG format for wallpapers and in PNG format for patterns. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_background_local.html).
  """

  defstruct "@type": "inputBackgroundLocal", "@extra": nil, background: nil
end
defmodule InternalLinkTypePublicChat do
  @moduledoc  """
  The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_username | string | Username of the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_public_chat.html).
  """

  defstruct "@type": "internalLinkTypePublicChat", "@extra": nil, chat_username: nil
end
defmodule TextEntityTypeUrl do
  @moduledoc  """
  An HTTP URL.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_url.html).
  """

  defstruct "@type": "textEntityTypeUrl", "@extra": nil
end
defmodule CallProblem do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_problem.html).
  """

  defstruct "@type": "CallProblem", "@extra": nil
end
defmodule AuthorizationStateWaitOtherDeviceConfirmation do
  @moduledoc  """
  The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link.

  | Name | Type | Description |
  |------|------| ------------|
  | link | string | A tg:// URL for the QR code. The link will be updated frequently. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_other_device_confirmation.html).
  """

  defstruct "@type": "authorizationStateWaitOtherDeviceConfirmation", "@extra": nil, link: nil
end
defmodule FileTypeNone do
  @moduledoc  """
  The data is not a file.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_none.html).
  """

  defstruct "@type": "fileTypeNone", "@extra": nil
end
defmodule ChatEventPermissionsChanged do
  @moduledoc  """
  The chat permissions was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_permissions | chatPermissions | Previous chat permissions. |
  | new_permissions | chatPermissions | New chat permissions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_permissions_changed.html).
  """

  defstruct "@type": "chatEventPermissionsChanged", "@extra": nil, old_permissions: nil, new_permissions: nil
end
defmodule CallStateHangingUp do
  @moduledoc  """
  The call is hanging up after discardCall has been called.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_hanging_up.html).
  """

  defstruct "@type": "callStateHangingUp", "@extra": nil
end
defmodule TestVectorIntObject do
  @moduledoc  """
  A simple object containing a vector of objects that hold a number; for testing only.

  | Name | Type | Description |
  |------|------| ------------|
  | value | testInt | Vector of objects. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1test_vector_int_object.html).
  """

  defstruct "@type": "testVectorIntObject", "@extra": nil, value: nil
end
defmodule ChatMemberStatusCreator do
  @moduledoc  """
  The user is the owner of the chat and has all the administrator privileges.

  | Name | Type | Description |
  |------|------| ------------|
  | custom_title | string | A custom title of the owner; 0-16 characters without emojis; applicable to supergroups only. |
  | is_anonymous | bool | True, if the creator isn't shown in the chat member list and sends messages anonymously; applicable to supergroups only. |
  | is_member | bool | True, if the user is a member of the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_creator.html).
  """

  defstruct "@type": "chatMemberStatusCreator", "@extra": nil, custom_title: nil, is_anonymous: nil, is_member: nil
end
defmodule InputInlineQueryResultArticle do
  @moduledoc  """
  Represents a link to an article or web page.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | url | string | URL of the result, if it exists. |
  | hide_url | bool | True, if the URL must be not shown. |
  | title | string | Title of the result. |
  | description | string | A short description of the result. |
  | thumbnail_url | string | URL of the result thumbnail, if it exists. |
  | thumbnail_width | int32 | Thumbnail width, if known. |
  | thumbnail_height | int32 | Thumbnail height, if known. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_article.html).
  """

  defstruct "@type": "inputInlineQueryResultArticle", "@extra": nil, id: nil, url: nil, hide_url: nil, title: nil, description: nil, thumbnail_url: nil, thumbnail_width: nil, thumbnail_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule InternalLinkTypeBotStartInGroup do
  @moduledoc  """
  The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the current user to select a basic group or a supergroup chat to add the bot to, taking into account that bots can be added to a public supergroup only by administrators of the supergroup. If administrator rights are provided by the link, call getChatMember to receive the current bot rights in the chat and if the bot already is an administrator, check that the current user can edit its administrator rights, combine received rights with the requested administrator rights, show confirmation box to the user, and call setChatMemberStatus with the chosen chat and confirmed administrator rights. Before call to setChatMemberStatus it may be required to upgrade the chosen basic group chat to a supergroup chat. Then if start_parameter isn't empty, call sendBotStartMessage with the given start parameter and the chosen chat, otherwise just send /start message with bot's username added to the chat.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_username | string | Username of the bot. |
  | start_parameter | string | The parameter to be passed to <a class="el" href="classtd_1_1td__api_1_1send_bot_start_message.html">sendBotStartMessage</a>. |
  | administrator_rights | chatAdministratorRights | Expected administrator rights for the bot; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_bot_start_in_group.html).
  """

  defstruct "@type": "internalLinkTypeBotStartInGroup", "@extra": nil, bot_username: nil, start_parameter: nil, administrator_rights: nil
end
defmodule UpdateChatPhoto do
  @moduledoc  """
  A chat photo was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | photo | chatPhotoInfo | The new chat photo; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_photo.html).
  """

  defstruct "@type": "updateChatPhoto", "@extra": nil, chat_id: nil, photo: nil
end
defmodule UserPrivacySettingRuleRestrictChatMembers do
  @moduledoc  """
  A rule to restrict all members of specified basic groups and supergroups from doing something.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_ids | int53 | The chat identifiers, total number of chats in all rules must not exceed 20. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_chat_members.html).
  """

  defstruct "@type": "userPrivacySettingRuleRestrictChatMembers", "@extra": nil, chat_ids: nil
end
defmodule ChatPhotoInfo do
  @moduledoc  """
  Contains basic information about the photo of a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | small | file | A small (160x160) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed. |
  | big | file | A big (640x640) chat photo variant in JPEG format. The file can be downloaded only before the photo is changed. |
  | minithumbnail | minithumbnail | Chat photo minithumbnail; may be null. |
  | has_animation | bool | True, if the photo has animated variant. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photo_info.html).
  """

  defstruct "@type": "chatPhotoInfo", "@extra": nil, small: nil, big: nil, minithumbnail: nil, has_animation: nil
end
defmodule ThumbnailFormatMpeg4 do
  @moduledoc  """
  The thumbnail is in MPEG4 format. It will be used only for some animations and videos.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_mpeg4.html).
  """

  defstruct "@type": "thumbnailFormatMpeg4", "@extra": nil
end
defmodule UserStatusLastMonth do
  @moduledoc  """
  The user is offline, but was online last month.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_last_month.html).
  """

  defstruct "@type": "userStatusLastMonth", "@extra": nil
end
defmodule InlineKeyboardButton do
  @moduledoc  """
  Represents a single button in an inline keyboard.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text of the button. |
  | type | InlineKeyboardButtonType | Type of the button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button.html).
  """

  defstruct "@type": "inlineKeyboardButton", "@extra": nil, text: nil, type: nil
end
defmodule ChatEventIsAllHistoryAvailableToggled do
  @moduledoc  """
  The is_all_history_available setting of a supergroup was toggled.

  | Name | Type | Description |
  |------|------| ------------|
  | is_all_history_available | bool | New value of is_all_history_available. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_is_all_history_available_toggled.html).
  """

  defstruct "@type": "chatEventIsAllHistoryAvailableToggled", "@extra": nil, is_all_history_available: nil
end
defmodule InternalLinkTypePrivacyAndSecuritySettings do
  @moduledoc  """
  The link is a link to the privacy and security settings section of the app.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_privacy_and_security_settings.html).
  """

  defstruct "@type": "internalLinkTypePrivacyAndSecuritySettings", "@extra": nil
end
defmodule PassportElementDriverLicense do
  @moduledoc  """
  A Telegram Passport element containing the user's driver license.

  | Name | Type | Description |
  |------|------| ------------|
  | driver_license | identityDocument | Driver license. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_driver_license.html).
  """

  defstruct "@type": "passportElementDriverLicense", "@extra": nil, driver_license: nil
end
defmodule FileTypeSecret do
  @moduledoc  """
  The file was sent to a secret chat (the file type is not known to the server).


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_secret.html).
  """

  defstruct "@type": "fileTypeSecret", "@extra": nil
end
defmodule ChatReportReasonChildAbuse do
  @moduledoc  """
  The chat has child abuse related content.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_child_abuse.html).
  """

  defstruct "@type": "chatReportReasonChildAbuse", "@extra": nil
end
defmodule NotificationSettingsScopeGroupChats do
  @moduledoc  """
  Notification settings applied to all basic group and supergroup chats when the corresponding chat setting has a default value.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_group_chats.html).
  """

  defstruct "@type": "notificationSettingsScopeGroupChats", "@extra": nil
end
defmodule TextEntityTypeMentionName do
  @moduledoc  """
  A text shows instead of a raw mention of the user (e.g., when the user has no username).

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | Identifier of the mentioned user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_mention_name.html).
  """

  defstruct "@type": "textEntityTypeMentionName", "@extra": nil, user_id: nil
end
defmodule RichTextMarked do
  @moduledoc  """
  A marked rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_marked.html).
  """

  defstruct "@type": "richTextMarked", "@extra": nil, text: nil
end
defmodule CanTransferOwnershipResultSessionTooFresh do
  @moduledoc  """
  The session was created recently, user needs to wait.

  | Name | Type | Description |
  |------|------| ------------|
  | retry_after | int32 | Time left before the session can be used to transfer ownership of a chat, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_transfer_ownership_result_session_too_fresh.html).
  """

  defstruct "@type": "canTransferOwnershipResultSessionTooFresh", "@extra": nil, retry_after: nil
end
defmodule InputChatPhotoPrevious do
  @moduledoc  """
  A previously used profile photo of the current user.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_photo_id | int64 | Identifier of the current user's profile photo to reuse. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_chat_photo_previous.html).
  """

  defstruct "@type": "inputChatPhotoPrevious", "@extra": nil, chat_photo_id: nil
end
defmodule GroupCallVideoSourceGroup do
  @moduledoc  """
  Describes a group of video synchronization source identifiers.

  | Name | Type | Description |
  |------|------| ------------|
  | semantics | string | The semantics of sources, one of "SIM" or "FID". |
  | source_ids | int32 | The list of synchronization source identifiers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_video_source_group.html).
  """

  defstruct "@type": "groupCallVideoSourceGroup", "@extra": nil, semantics: nil, source_ids: nil
end
defmodule PremiumSource do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_premium_source.html).
  """

  defstruct "@type": "PremiumSource", "@extra": nil
end
defmodule ChatStatisticsAdministratorActionsInfo do
  @moduledoc  """
  Contains statistics about administrator actions done by a user.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | Administrator user identifier. |
  | deleted_message_count | int32 | Number of messages deleted by the administrator. |
  | banned_user_count | int32 | Number of users banned by the administrator. |
  | restricted_user_count | int32 | Number of users restricted by the administrator. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_administrator_actions_info.html).
  """

  defstruct "@type": "chatStatisticsAdministratorActionsInfo", "@extra": nil, user_id: nil, deleted_message_count: nil, banned_user_count: nil, restricted_user_count: nil
end
defmodule UpdateNewInlineQuery do
  @moduledoc  """
  A new incoming inline query; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Unique query identifier. |
  | sender_user_id | int53 | Identifier of the user who sent the query. |
  | user_location | location | User location; may be null. |
  | chat_type | ChatType | The type of the chat from which the query originated; may be null if unknown. |
  | query | string | Text of the query. |
  | offset | string | Offset of the first entry to return. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_inline_query.html).
  """

  defstruct "@type": "updateNewInlineQuery", "@extra": nil, id: nil, sender_user_id: nil, user_location: nil, chat_type: nil, query: nil, offset: nil
end
defmodule DeviceTokenUbuntuPush do
  @moduledoc  """
  A token for Ubuntu Push Client service.

  | Name | Type | Description |
  |------|------| ------------|
  | token | string | Token; may be empty to deregister a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_ubuntu_push.html).
  """

  defstruct "@type": "deviceTokenUbuntuPush", "@extra": nil, token: nil
end
defmodule UserPrivacySettingRuleAllowContacts do
  @moduledoc  """
  A rule to allow all of a user's contacts to do something.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_contacts.html).
  """

  defstruct "@type": "userPrivacySettingRuleAllowContacts", "@extra": nil
end
defmodule LanguagePackString do
  @moduledoc  """
  Represents one language pack string.

  | Name | Type | Description |
  |------|------| ------------|
  | key | string | String key. |
  | value | LanguagePackStringValue | String value; pass null if the string needs to be taken from the built-in English language pack. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_string.html).
  """

  defstruct "@type": "languagePackString", "@extra": nil, key: nil, value: nil
end
defmodule MessageVenue do
  @moduledoc  """
  A message with information about a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | venue | venue | The venue description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_venue.html).
  """

  defstruct "@type": "messageVenue", "@extra": nil, venue: nil
end
defmodule InternalLinkTypePassportDataRequest do
  @moduledoc  """
  The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the application, otherwise ignore it.

  | Name | Type | Description |
  |------|------| ------------|
  | bot_user_id | int53 | User identifier of the service's bot. |
  | scope | string | Telegram Passport element types requested by the service. |
  | public_key | string | Service's public key. |
  | nonce | string | Unique request identifier provided by the service. |
  | callback_url | string | An HTTP URL to open once the request is finished or canceled with the parameter tg_passport=success or tg_passport=cancel respectively. If empty, then the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel needs to be opened instead. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_passport_data_request.html).
  """

  defstruct "@type": "internalLinkTypePassportDataRequest", "@extra": nil, bot_user_id: nil, scope: nil, public_key: nil, nonce: nil, callback_url: nil
end
defmodule PushMessageContentMediaAlbum do
  @moduledoc  """
  A media album.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Number of messages in the album. |
  | has_photos | bool | True, if the album has at least one photo. |
  | has_videos | bool | True, if the album has at least one video. |
  | has_audios | bool | True, if the album has at least one audio file. |
  | has_documents | bool | True, if the album has at least one document. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_media_album.html).
  """

  defstruct "@type": "pushMessageContentMediaAlbum", "@extra": nil, total_count: nil, has_photos: nil, has_videos: nil, has_audios: nil, has_documents: nil
end
defmodule PassportElementTypeAddress do
  @moduledoc  """
  A Telegram Passport element containing the user's address.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_address.html).
  """

  defstruct "@type": "passportElementTypeAddress", "@extra": nil
end
defmodule InputMessageForwarded do
  @moduledoc  """
  A forwarded message.

  | Name | Type | Description |
  |------|------| ------------|
  | from_chat_id | int53 | Identifier for the chat this forwarded message came from. |
  | message_id | int53 | Identifier of the message to forward. |
  | in_game_share | bool | True, if a game message is being shared from a launched game; applies only to game messages. |
  | copy_options | messageCopyOptions | Options to be used to copy content of the message without reference to the original sender; pass null to forward the message as usual. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_forwarded.html).
  """

  defstruct "@type": "inputMessageForwarded", "@extra": nil, from_chat_id: nil, message_id: nil, in_game_share: nil, copy_options: nil
end
defmodule CallServerType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_server_type.html).
  """

  defstruct "@type": "CallServerType", "@extra": nil
end
defmodule WebPageInstantView do
  @moduledoc  """
  Describes an instant view page for a web page.

  | Name | Type | Description |
  |------|------| ------------|
  | page_blocks | PageBlock | Content of the web page. |
  | view_count | int32 | Number of the instant view views; 0 if unknown. |
  | version | int32 | Version of the instant view; currently, can be 1 or 2. |
  | is_rtl | bool | True, if the instant view must be shown from right to left. |
  | is_full | bool | True, if the instant view contains the full page. A network request might be needed to get the full web page instant view. |
  | feedback_link | InternalLinkType | An internal link to be opened to leave feedback about the instant view. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1web_page_instant_view.html).
  """

  defstruct "@type": "webPageInstantView", "@extra": nil, page_blocks: nil, view_count: nil, version: nil, is_rtl: nil, is_full: nil, feedback_link: nil
end
defmodule Point do
  @moduledoc  """
  A point on a Cartesian plane.

  | Name | Type | Description |
  |------|------| ------------|
  | x | double | The point's first coordinate. |
  | y | double | The point's second coordinate. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1point.html).
  """

  defstruct "@type": "point", "@extra": nil, x: nil, y: nil
end
defmodule InputFileId do
  @moduledoc  """
  A file defined by its unique ID.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Unique file identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_id.html).
  """

  defstruct "@type": "inputFileId", "@extra": nil, id: nil
end
defmodule ReplyMarkupInlineKeyboard do
  @moduledoc  """
  Contains an inline keyboard layout.

  | Name | Type | Description |
  |------|------| ------------|
  | rows | inlineKeyboardButton | A list of rows of inline keyboard buttons. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reply_markup_inline_keyboard.html).
  """

  defstruct "@type": "replyMarkupInlineKeyboard", "@extra": nil, rows: nil
end
defmodule ChatEventMemberJoinedByRequest do
  @moduledoc  """
  A new member was accepted to the chat by an administrator.

  | Name | Type | Description |
  |------|------| ------------|
  | approver_user_id | int53 | User identifier of the chat administrator, approved user join request. |
  | invite_link | chatInviteLink | Invite link used to join the chat; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_joined_by_request.html).
  """

  defstruct "@type": "chatEventMemberJoinedByRequest", "@extra": nil, approver_user_id: nil, invite_link: nil
end
defmodule TargetChat do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_target_chat.html).
  """

  defstruct "@type": "TargetChat", "@extra": nil
end
defmodule MessageSenders do
  @moduledoc  """
  Represents a list of message senders.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of messages senders found. |
  | senders | MessageSender | List of message senders. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_senders.html).
  """

  defstruct "@type": "messageSenders", "@extra": nil, total_count: nil, senders: nil
end
defmodule UserPrivacySettingRuleAllowChatMembers do
  @moduledoc  """
  A rule to allow all members of certain specified basic groups and supergroups to doing something.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_ids | int53 | The chat identifiers, total number of chats in all rules must not exceed 20. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_chat_members.html).
  """

  defstruct "@type": "userPrivacySettingRuleAllowChatMembers", "@extra": nil, chat_ids: nil
end
defmodule SearchMessagesFilterVoiceNote do
  @moduledoc  """
  Returns only voice note messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_voice_note.html).
  """

  defstruct "@type": "searchMessagesFilterVoiceNote", "@extra": nil
end
defmodule PremiumSourceFeature do
  @moduledoc  """
  A user tried to use a Premium feature.

  | Name | Type | Description |
  |------|------| ------------|
  | feature | PremiumFeature | The used feature. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_source_feature.html).
  """

  defstruct "@type": "premiumSourceFeature", "@extra": nil, feature: nil
end
defmodule Countries do
  @moduledoc  """
  Contains information about countries.

  | Name | Type | Description |
  |------|------| ------------|
  | countries | countryInfo | The list of countries. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1countries.html).
  """

  defstruct "@type": "countries", "@extra": nil, countries: nil
end
defmodule MessageInvoice do
  @moduledoc  """
  A message with an invoice from a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Product title. |
  | description | formattedText | Product description. |
  | photo | photo | Product photo; may be null. |
  | currency | string | Currency for the product price. |
  | total_amount | int53 | Product total price in the smallest units of the currency. |
  | start_parameter | string | Unique invoice bot start_parameter. To share an invoice use the URL <a href="https://t.me/{bot_username}?start={start_parameter}">https://t.me/{bot_username}?start={start_parameter}</a>. |
  | is_test | bool | True, if the invoice is a test invoice. |
  | need_shipping_address | bool | True, if the shipping address must be specified. |
  | receipt_message_id | int53 | The identifier of the message with the receipt, after the product has been purchased. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_invoice.html).
  """

  defstruct "@type": "messageInvoice", "@extra": nil, title: nil, description: nil, photo: nil, currency: nil, total_amount: nil, start_parameter: nil, is_test: nil, need_shipping_address: nil, receipt_message_id: nil
end
defmodule JsonValueObject do
  @moduledoc  """
  Represents a JSON object.

  | Name | Type | Description |
  |------|------| ------------|
  | members | jsonObjectMember | The list of object members. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_object.html).
  """

  defstruct "@type": "jsonValueObject", "@extra": nil, members: nil
end
defmodule UserStatusLastWeek do
  @moduledoc  """
  The user is offline, but was online last week.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_last_week.html).
  """

  defstruct "@type": "userStatusLastWeek", "@extra": nil
end
defmodule KeyboardButtonTypeRequestPhoneNumber do
  @moduledoc  """
  A button that sends the user's phone number when pressed; available only in private chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_phone_number.html).
  """

  defstruct "@type": "keyboardButtonTypeRequestPhoneNumber", "@extra": nil
end
defmodule MessageVoiceNote do
  @moduledoc  """
  A voice note message.

  | Name | Type | Description |
  |------|------| ------------|
  | voice_note | voiceNote | The voice note description. |
  | caption | formattedText | Voice note caption. |
  | is_listened | bool | True, if at least one of the recipients has listened to the voice note. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_voice_note.html).
  """

  defstruct "@type": "messageVoiceNote", "@extra": nil, voice_note: nil, caption: nil, is_listened: nil
end
defmodule SecretChatStatePending do
  @moduledoc  """
  The secret chat is not yet created; waiting for the other user to get online.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat_state_pending.html).
  """

  defstruct "@type": "secretChatStatePending", "@extra": nil
end
defmodule PushMessageContentLocation do
  @moduledoc  """
  A message with a location.

  | Name | Type | Description |
  |------|------| ------------|
  | is_live | bool | True, if the location is live. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_location.html).
  """

  defstruct "@type": "pushMessageContentLocation", "@extra": nil, is_live: nil, is_pinned: nil
end
defmodule ChatEventInviteLinkDeleted do
  @moduledoc  """
  A revoked chat invite link was deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | invite_link | chatInviteLink | The invite link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_invite_link_deleted.html).
  """

  defstruct "@type": "chatEventInviteLinkDeleted", "@extra": nil, invite_link: nil
end
defmodule ChatEvent do
  @moduledoc  """
  Represents a chat event.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Chat event identifier. |
  | date | int32 | Point in time (Unix timestamp) when the event happened. |
  | member_id | MessageSender | Identifier of the user or chat who performed the action. |
  | action | ChatEventAction | The action. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event.html).
  """

  defstruct "@type": "chatEvent", "@extra": nil, id: nil, date: nil, member_id: nil, action: nil
end
defmodule ChatEventVideoChatCreated do
  @moduledoc  """
  A video chat was created.

  | Name | Type | Description |
  |------|------| ------------|
  | group_call_id | int32 | Identifier of the video chat. The video chat can be received through the method <a class="el" href="classtd_1_1td__api_1_1get_group_call.html">getGroupCall</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_created.html).
  """

  defstruct "@type": "chatEventVideoChatCreated", "@extra": nil, group_call_id: nil
end
defmodule GroupCall do
  @moduledoc  """
  Describes a group call.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Group call identifier. |
  | title | string | Group call title. |
  | scheduled_start_date | int32 | Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 if it is already active or was ended. |
  | enabled_start_notification | bool | True, if the group call is scheduled and the current user will receive a notification when the group call will start. |
  | is_active | bool | True, if the call is active. |
  | is_rtmp_stream | bool | True, if the chat is an RTMP stream instead of an ordinary video chat. |
  | is_joined | bool | True, if the call is joined. |
  | need_rejoin | bool | True, if user was kicked from the call because of network loss and the call needs to be rejoined. |
  | can_be_managed | bool | True, if the current user can manage the group call. |
  | participant_count | int32 | Number of participants in the group call. |
  | has_hidden_listeners | bool | True, if group call participants, which are muted, aren't returned in participant list. |
  | loaded_all_participants | bool | True, if all group call participants are loaded. |
  | recent_speakers | groupCallRecentSpeaker | At most 3 recently speaking users in the group call. |
  | is_my_video_enabled | bool | True, if the current user's video is enabled. |
  | is_my_video_paused | bool | True, if the current user's video is paused. |
  | can_enable_video | bool | True, if the current user can broadcast video or share screen. |
  | mute_new_participants | bool | True, if only group call administrators can unmute new participants. |
  | can_toggle_mute_new_participants | bool | True, if the current user can enable or disable mute_new_participants setting. |
  | record_duration | int32 | Duration of the ongoing group call recording, in seconds; 0 if none. An <a class="el" href="classtd_1_1td__api_1_1update_group_call.html">updateGroupCall</a> update is not triggered when value of this field changes, but the same recording goes on. |
  | is_video_recorded | bool | True, if a video file is being recorded for the call. |
  | duration | int32 | Call duration, in seconds; for ended calls only. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call.html).
  """

  defstruct "@type": "groupCall", "@extra": nil, id: nil, title: nil, scheduled_start_date: nil, enabled_start_notification: nil, is_active: nil, is_rtmp_stream: nil, is_joined: nil, need_rejoin: nil, can_be_managed: nil, participant_count: nil, has_hidden_listeners: nil, loaded_all_participants: nil, recent_speakers: nil, is_my_video_enabled: nil, is_my_video_paused: nil, can_enable_video: nil, mute_new_participants: nil, can_toggle_mute_new_participants: nil, record_duration: nil, is_video_recorded: nil, duration: nil
end
defmodule ChatEventHasProtectedContentToggled do
  @moduledoc  """
  The has_protected_content setting of a channel was toggled.

  | Name | Type | Description |
  |------|------| ------------|
  | has_protected_content | bool | New value of has_protected_content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_has_protected_content_toggled.html).
  """

  defstruct "@type": "chatEventHasProtectedContentToggled", "@extra": nil, has_protected_content: nil
end
defmodule InputFileRemote do
  @moduledoc  """
  A file defined by its remote ID. The remote ID is guaranteed to be usable only if the corresponding file is still accessible to the user and known to TDLib. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Remote file identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_remote.html).
  """

  defstruct "@type": "inputFileRemote", "@extra": nil, id: nil
end
defmodule InternalLinkTypeLanguageSettings do
  @moduledoc  """
  The link is a link to the language settings section of the app.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_language_settings.html).
  """

  defstruct "@type": "internalLinkTypeLanguageSettings", "@extra": nil
end
defmodule SearchMessagesFilterAudio do
  @moduledoc  """
  Returns only audio messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_audio.html).
  """

  defstruct "@type": "searchMessagesFilterAudio", "@extra": nil
end
defmodule PushMessageContentAudio do
  @moduledoc  """
  An audio message.

  | Name | Type | Description |
  |------|------| ------------|
  | audio | audio | Message content; may be null. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_audio.html).
  """

  defstruct "@type": "pushMessageContentAudio", "@extra": nil, audio: nil, is_pinned: nil
end
defmodule PassportElementUtilityBill do
  @moduledoc  """
  A Telegram Passport element containing the user's utility bill.

  | Name | Type | Description |
  |------|------| ------------|
  | utility_bill | personalDocument | Utility bill. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_utility_bill.html).
  """

  defstruct "@type": "passportElementUtilityBill", "@extra": nil, utility_bill: nil
end
defmodule PushMessageContentContact do
  @moduledoc  """
  A message with a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Contact's name. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_contact.html).
  """

  defstruct "@type": "pushMessageContentContact", "@extra": nil, name: nil, is_pinned: nil
end
defmodule PassportRequiredElement do
  @moduledoc  """
  Contains a description of the required Telegram Passport element that was requested by a service.

  | Name | Type | Description |
  |------|------| ------------|
  | suitable_elements | passportSuitableElement | List of Telegram Passport elements any of which is enough to provide. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_required_element.html).
  """

  defstruct "@type": "passportRequiredElement", "@extra": nil, suitable_elements: nil
end
defmodule SearchMessagesFilterPhoto do
  @moduledoc  """
  Returns only photo messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_photo.html).
  """

  defstruct "@type": "searchMessagesFilterPhoto", "@extra": nil
end
defmodule UpdateWebAppMessageSent do
  @moduledoc  """
  A message was sent by an opened Web App, so the Web App needs to be closed.

  | Name | Type | Description |
  |------|------| ------------|
  | web_app_launch_id | int64 | Identifier of Web App launch. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_web_app_message_sent.html).
  """

  defstruct "@type": "updateWebAppMessageSent", "@extra": nil, web_app_launch_id: nil
end
defmodule UpdateDiceEmojis do
  @moduledoc  """
  The list of supported dice emojis has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | emojis | string | The new list of supported dice emojis. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_dice_emojis.html).
  """

  defstruct "@type": "updateDiceEmojis", "@extra": nil, emojis: nil
end
defmodule PremiumLimit do
  @moduledoc  """
  Contains information about a limit, increased for Premium users.

  | Name | Type | Description |
  |------|------| ------------|
  | type | PremiumLimitType | The type of the limit. |
  | default_value | int32 | Default value of the limit. |
  | premium_value | int32 | Value of the limit for Premium users. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit.html).
  """

  defstruct "@type": "premiumLimit", "@extra": nil, type: nil, default_value: nil, premium_value: nil
end
defmodule InternalLinkTypeLanguagePack do
  @moduledoc  """
  The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | language_pack_id | string | Language pack identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_language_pack.html).
  """

  defstruct "@type": "internalLinkTypeLanguagePack", "@extra": nil, language_pack_id: nil
end
defmodule InlineQueryResults do
  @moduledoc  """
  Represents the results of the inline query. Use sendInlineQueryResultMessage to send the result of the query.

  | Name | Type | Description |
  |------|------| ------------|
  | inline_query_id | int64 | Unique identifier of the inline query. |
  | next_offset | string | The offset for the next request. If empty, there are no more results. |
  | results | InlineQueryResult | Results of the query. |
  | switch_pm_text | string | If non-empty, this text must be shown on the button, which opens a private chat with the bot and sends the bot a start message with the switch_pm_parameter. |
  | switch_pm_parameter | string | Parameter for the bot start message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_results.html).
  """

  defstruct "@type": "inlineQueryResults", "@extra": nil, inline_query_id: nil, next_offset: nil, results: nil, switch_pm_text: nil, switch_pm_parameter: nil
end
defmodule PremiumFeatureIncreasedLimits do
  @moduledoc  """
  Increased limits.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_increased_limits.html).
  """

  defstruct "@type": "premiumFeatureIncreasedLimits", "@extra": nil
end
defmodule PageBlockEmbeddedPost do
  @moduledoc  """
  An embedded post.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | Web page URL. |
  | author | string | Post author. |
  | author_photo | photo | Post author photo; may be null. |
  | date | int32 | Point in time (Unix timestamp) when the post was created; 0 if unknown. |
  | page_blocks | PageBlock | Post content. |
  | caption | pageBlockCaption | Post caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_embedded_post.html).
  """

  defstruct "@type": "pageBlockEmbeddedPost", "@extra": nil, url: nil, author: nil, author_photo: nil, date: nil, page_blocks: nil, caption: nil
end
defmodule KeyboardButtonTypeWebApp do
  @moduledoc  """
  A button that opens a Web App by calling getWebAppUrl.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | An HTTP URL to pass to <a class="el" href="classtd_1_1td__api_1_1get_web_app_url.html">getWebAppUrl</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_web_app.html).
  """

  defstruct "@type": "keyboardButtonTypeWebApp", "@extra": nil, url: nil
end
defmodule PassportElementIdentityCard do
  @moduledoc  """
  A Telegram Passport element containing the user's identity card.

  | Name | Type | Description |
  |------|------| ------------|
  | identity_card | identityDocument | Identity card. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_identity_card.html).
  """

  defstruct "@type": "passportElementIdentityCard", "@extra": nil, identity_card: nil
end
defmodule InputPassportElementPassportRegistration do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's passport registration.

  | Name | Type | Description |
  |------|------| ------------|
  | passport_registration | inputPersonalDocument | The passport registration page to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_passport_registration.html).
  """

  defstruct "@type": "inputPassportElementPassportRegistration", "@extra": nil, passport_registration: nil
end
defmodule SessionType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_session_type.html).
  """

  defstruct "@type": "SessionType", "@extra": nil
end
defmodule InlineKeyboardButtonTypeCallbackGame do
  @moduledoc  """
  A button with a game that sends a callback query to a bot. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageGame.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_callback_game.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeCallbackGame", "@extra": nil
end
defmodule SuggestedActionSetPassword do
  @moduledoc  """
  Suggests the user to set a 2-step verification password to be able to log in again.

  | Name | Type | Description |
  |------|------| ------------|
  | authorization_delay | int32 | The number of days to pass between consecutive authorizations if the user declines to set password. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_set_password.html).
  """

  defstruct "@type": "suggestedActionSetPassword", "@extra": nil, authorization_delay: nil
end
defmodule TextEntityTypeEmailAddress do
  @moduledoc  """
  An email address.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_email_address.html).
  """

  defstruct "@type": "textEntityTypeEmailAddress", "@extra": nil
end
defmodule MessageSender do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_sender.html).
  """

  defstruct "@type": "MessageSender", "@extra": nil
end
defmodule InputPassportElementError do
  @moduledoc  """
  Contains the description of an error in a Telegram Passport element; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | type | PassportElementType | Type of Telegram Passport element that has the error. |
  | message | string | Error message. |
  | source | InputPassportElementErrorSource | Error source. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error.html).
  """

  defstruct "@type": "inputPassportElementError", "@extra": nil, type: nil, message: nil, source: nil
end
defmodule ChatMembersFilterRestricted do
  @moduledoc  """
  Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_restricted.html).
  """

  defstruct "@type": "chatMembersFilterRestricted", "@extra": nil
end
defmodule InputMessageSticker do
  @moduledoc  """
  A sticker message.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | InputFile | Sticker to be sent. |
  | thumbnail | inputThumbnail | Sticker thumbnail; pass null to skip thumbnail uploading. |
  | width | int32 | Sticker width. |
  | height | int32 | Sticker height. |
  | emoji | string | Emoji used to choose the sticker. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_sticker.html).
  """

  defstruct "@type": "inputMessageSticker", "@extra": nil, sticker: nil, thumbnail: nil, width: nil, height: nil, emoji: nil
end
defmodule InputMessageContact do
  @moduledoc  """
  A message containing a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | contact | contact | Contact to send. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_contact.html).
  """

  defstruct "@type": "inputMessageContact", "@extra": nil, contact: nil
end
defmodule LoginUrlInfoOpen do
  @moduledoc  """
  An HTTP url needs to be open.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | The URL to open. |
  | skip_confirm | bool | True, if there is no need to show an ordinary open URL confirm. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1login_url_info_open.html).
  """

  defstruct "@type": "loginUrlInfoOpen", "@extra": nil, url: nil, skip_confirm: nil
end
defmodule JsonValueArray do
  @moduledoc  """
  Represents a JSON array.

  | Name | Type | Description |
  |------|------| ------------|
  | values | JsonValue | The list of array elements. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_array.html).
  """

  defstruct "@type": "jsonValueArray", "@extra": nil, values: nil
end
defmodule PushMessageContentChatJoinByRequest do
  @moduledoc  """
  A new member was accepted to the chat by an administrator.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_chat_join_by_request.html).
  """

  defstruct "@type": "pushMessageContentChatJoinByRequest", "@extra": nil
end
defmodule TMeUrlTypeStickerSet do
  @moduledoc  """
  A URL linking to a sticker set.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker_set_id | int64 | Identifier of the sticker set. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_sticker_set.html).
  """

  defstruct "@type": "tMeUrlTypeStickerSet", "@extra": nil, sticker_set_id: nil
end
defmodule Count do
  @moduledoc  """
  Contains a counter.

  | Name | Type | Description |
  |------|------| ------------|
  | count | int32 | Count. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1count.html).
  """

  defstruct "@type": "count", "@extra": nil, count: nil
end
defmodule VectorPathCommandLine do
  @moduledoc  """
  A straight line to a given point.

  | Name | Type | Description |
  |------|------| ------------|
  | end_point | point | The end point of the straight line. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1vector_path_command_line.html).
  """

  defstruct "@type": "vectorPathCommandLine", "@extra": nil, end_point: nil
end
defmodule MessagePhoto do
  @moduledoc  """
  A photo message.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | photo | The photo description. |
  | caption | formattedText | Photo caption. |
  | is_secret | bool | True, if the photo must be blurred and must be shown only while tapped. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_photo.html).
  """

  defstruct "@type": "messagePhoto", "@extra": nil, photo: nil, caption: nil, is_secret: nil
end
defmodule PageBlockVerticalAlignmentMiddle do
  @moduledoc  """
  The content must be middle-aligned.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_vertical_alignment_middle.html).
  """

  defstruct "@type": "pageBlockVerticalAlignmentMiddle", "@extra": nil
end
defmodule CheckChatUsernameResultPublicChatsTooMuch do
  @moduledoc  """
  The user has too many chats with username, one of them must be made private first.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_public_chats_too_much.html).
  """

  defstruct "@type": "checkChatUsernameResultPublicChatsTooMuch", "@extra": nil
end
defmodule PassportElementAddress do
  @moduledoc  """
  A Telegram Passport element containing the user's address.

  | Name | Type | Description |
  |------|------| ------------|
  | address | address | Address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_address.html).
  """

  defstruct "@type": "passportElementAddress", "@extra": nil, address: nil
end
defmodule ImportedContacts do
  @moduledoc  """
  Represents the result of an ImportContacts request.

  | Name | Type | Description |
  |------|------| ------------|
  | user_ids | int53 | User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user. |
  | importer_count | int32 | The number of users that imported the corresponding contact; 0 for already registered users or if unavailable. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1imported_contacts.html).
  """

  defstruct "@type": "importedContacts", "@extra": nil, user_ids: nil, importer_count: nil
end
defmodule SearchMessagesFilterVoiceAndVideoNote do
  @moduledoc  """
  Returns only voice and video note messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_voice_and_video_note.html).
  """

  defstruct "@type": "searchMessagesFilterVoiceAndVideoNote", "@extra": nil
end
defmodule SupergroupMembersFilter do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_supergroup_members_filter.html).
  """

  defstruct "@type": "SupergroupMembersFilter", "@extra": nil
end
defmodule InputInlineQueryResultSticker do
  @moduledoc  """
  Represents a link to a WEBP, TGS, or WEBM sticker.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | thumbnail_url | string | URL of the sticker thumbnail, if it exists. |
  | sticker_url | string | The URL of the WEBP, TGS, or WEBM sticker (sticker file size must not exceed 5MB). |
  | sticker_width | int32 | Width of the sticker. |
  | sticker_height | int32 | Height of the sticker. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |
  | input_message_content | InputMessageContent | The content of the message to be sent. Must be one of the following types: <a class="el" href="classtd_1_1td__api_1_1input_message_text.html">inputMessageText</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_sticker.html">inputMessageSticker</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_invoice.html">inputMessageInvoice</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_location.html">inputMessageLocation</a>, <a class="el" href="classtd_1_1td__api_1_1input_message_venue.html">inputMessageVenue</a> or <a class="el" href="classtd_1_1td__api_1_1input_message_contact.html">inputMessageContact</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_sticker.html).
  """

  defstruct "@type": "inputInlineQueryResultSticker", "@extra": nil, id: nil, thumbnail_url: nil, sticker_url: nil, sticker_width: nil, sticker_height: nil, reply_markup: nil, input_message_content: nil
end
defmodule ShippingOption do
  @moduledoc  """
  One shipping option.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Shipping option identifier. |
  | title | string | Option title. |
  | price_parts | labeledPricePart | A list of objects used to calculate the total shipping costs. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1shipping_option.html).
  """

  defstruct "@type": "shippingOption", "@extra": nil, id: nil, title: nil, price_parts: nil
end
defmodule NotificationType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_notification_type.html).
  """

  defstruct "@type": "NotificationType", "@extra": nil
end
defmodule StatisticalGraphError do
  @moduledoc  """
  An error message to be shown to the user instead of the graph.

  | Name | Type | Description |
  |------|------| ------------|
  | error_message | string | The error message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1statistical_graph_error.html).
  """

  defstruct "@type": "statisticalGraphError", "@extra": nil, error_message: nil
end
defmodule CheckStickerSetNameResultNameOccupied do
  @moduledoc  """
  The name is occupied.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_sticker_set_name_result_name_occupied.html).
  """

  defstruct "@type": "checkStickerSetNameResultNameOccupied", "@extra": nil
end
defmodule FileTypeSticker do
  @moduledoc  """
  The file is a sticker.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_sticker.html).
  """

  defstruct "@type": "fileTypeSticker", "@extra": nil
end
defmodule ThemeParameters do
  @moduledoc  """
  Contains parameters of the application theme.

  | Name | Type | Description |
  |------|------| ------------|
  | background_color | int32 | A color of the background in the RGB24 format. |
  | secondary_background_color | int32 | A secondary color for the background in the RGB24 format. |
  | text_color | int32 | A color of text in the RGB24 format. |
  | hint_color | int32 | A color of hints in the RGB24 format. |
  | link_color | int32 | A color of links in the RGB24 format. |
  | button_color | int32 | A color of the buttons in the RGB24 format. |
  | button_text_color | int32 | A color of text on the buttons in the RGB24 format. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1theme_parameters.html).
  """

  defstruct "@type": "themeParameters", "@extra": nil, background_color: nil, secondary_background_color: nil, text_color: nil, hint_color: nil, link_color: nil, button_color: nil, button_text_color: nil
end
defmodule UpdateConnectionState do
  @moduledoc  """
  The connection state has changed. This update must be used only to show a human-readable description of the connection state.

  | Name | Type | Description |
  |------|------| ------------|
  | state | ConnectionState | The new connection state. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_connection_state.html).
  """

  defstruct "@type": "updateConnectionState", "@extra": nil, state: nil
end
defmodule MessageAudio do
  @moduledoc  """
  An audio message.

  | Name | Type | Description |
  |------|------| ------------|
  | audio | audio | The audio description. |
  | caption | formattedText | Audio caption. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_audio.html).
  """

  defstruct "@type": "messageAudio", "@extra": nil, audio: nil, caption: nil
end
defmodule StickerTypeMask do
  @moduledoc  """
  The sticker is a mask in WEBP format to be placed on photos or videos.

  | Name | Type | Description |
  |------|------| ------------|
  | mask_position | maskPosition | Position where the mask is placed; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_type_mask.html).
  """

  defstruct "@type": "stickerTypeMask", "@extra": nil, mask_position: nil
end
defmodule BackgroundFillFreeformGradient do
  @moduledoc  """
  Describes a freeform gradient fill of a background.

  | Name | Type | Description |
  |------|------| ------------|
  | colors | int32 | A list of 3 or 4 colors of the freeform gradients in the RGB24 format. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_fill_freeform_gradient.html).
  """

  defstruct "@type": "backgroundFillFreeformGradient", "@extra": nil, colors: nil
end
defmodule ThumbnailFormatWebp do
  @moduledoc  """
  The thumbnail is in WEBP format. It will be used only for some stickers.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_webp.html).
  """

  defstruct "@type": "thumbnailFormatWebp", "@extra": nil
end
defmodule ChatMembers do
  @moduledoc  """
  Contains a list of chat members.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of chat members found. |
  | members | chatMember | A list of chat members. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members.html).
  """

  defstruct "@type": "chatMembers", "@extra": nil, total_count: nil, members: nil
end
defmodule InputInvoiceMessage do
  @moduledoc  """
  An invoice from a message of the type messageInvoice.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier of the message. |
  | message_id | int53 | Message identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_invoice_message.html).
  """

  defstruct "@type": "inputInvoiceMessage", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule ChatInviteLink do
  @moduledoc  """
  Contains a chat invite link.

  | Name | Type | Description |
  |------|------| ------------|
  | invite_link | string | Chat invite link. |
  | name | string | Name of the link. |
  | creator_user_id | int53 | User identifier of an administrator created the link. |
  | date | int32 | Point in time (Unix timestamp) when the link was created. |
  | edit_date | int32 | Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown. |
  | expiration_date | int32 | Point in time (Unix timestamp) when the link will expire; 0 if never. |
  | member_limit | int32 | The maximum number of members, which can join the chat using the link simultaneously; 0 if not limited. Always 0 if the link requires approval. |
  | member_count | int32 | Number of chat members, which joined the chat using the link. |
  | pending_join_request_count | int32 | Number of pending join requests created using this link. |
  | creates_join_request | bool | True, if the link only creates join request. If true, total number of joining members will be unlimited. |
  | is_primary | bool | True, if the link is primary. Primary invite link can't have name, expiration date, or usage limit. There is exactly one primary invite link for each administrator with can_invite_users right at a given time. |
  | is_revoked | bool | True, if the link was revoked. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_link.html).
  """

  defstruct "@type": "chatInviteLink", "@extra": nil, invite_link: nil, name: nil, creator_user_id: nil, date: nil, edit_date: nil, expiration_date: nil, member_limit: nil, member_count: nil, pending_join_request_count: nil, creates_join_request: nil, is_primary: nil, is_revoked: nil
end
defmodule OptionValueBoolean do
  @moduledoc  """
  Represents a boolean option.

  | Name | Type | Description |
  |------|------| ------------|
  | value | bool | The value of the option. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_boolean.html).
  """

  defstruct "@type": "optionValueBoolean", "@extra": nil, value: nil
end
defmodule PassportElementErrorSourceReverseSide do
  @moduledoc  """
  The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_reverse_side.html).
  """

  defstruct "@type": "passportElementErrorSourceReverseSide", "@extra": nil
end
defmodule ChatAdministrator do
  @moduledoc  """
  Contains information about a chat administrator.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | User identifier of the administrator. |
  | custom_title | string | Custom title of the administrator. |
  | is_owner | bool | True, if the user is the owner of the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_administrator.html).
  """

  defstruct "@type": "chatAdministrator", "@extra": nil, user_id: nil, custom_title: nil, is_owner: nil
end
defmodule InputPassportElementPassport do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's passport.

  | Name | Type | Description |
  |------|------| ------------|
  | passport | inputIdentityDocument | The passport to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_passport.html).
  """

  defstruct "@type": "inputPassportElementPassport", "@extra": nil, passport: nil
end
defmodule LabeledPricePart do
  @moduledoc  """
  Portion of the price of a product (e.g., "delivery cost", "tax amount").

  | Name | Type | Description |
  |------|------| ------------|
  | label | string | Label for this portion of the product price. |
  | amount | int53 | Currency amount in the smallest units of the currency. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1labeled_price_part.html).
  """

  defstruct "@type": "labeledPricePart", "@extra": nil, label: nil, amount: nil
end
defmodule UserTypeBot do
  @moduledoc  """
  A bot (see https://core.telegram.org/bots).

  | Name | Type | Description |
  |------|------| ------------|
  | can_join_groups | bool | True, if the bot can be invited to basic group and supergroup chats. |
  | can_read_all_group_messages | bool | True, if the bot can read all messages in basic group or supergroup chats and not just those addressed to the bot. In private and channel chats a bot can always read all messages. |
  | is_inline | bool | True, if the bot supports inline queries. |
  | inline_query_placeholder | string | Placeholder for inline queries (displayed on the application input field). |
  | need_location | bool | True, if the location of the user is expected to be sent with every inline query to this bot. |
  | can_be_added_to_attachment_menu | bool | True, if the bot can be added to attachment menu. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_type_bot.html).
  """

  defstruct "@type": "userTypeBot", "@extra": nil, can_join_groups: nil, can_read_all_group_messages: nil, is_inline: nil, inline_query_placeholder: nil, need_location: nil, can_be_added_to_attachment_menu: nil
end
defmodule UpdateDeleteMessages do
  @moduledoc  """
  Some messages were deleted.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_ids | int53 | Identifiers of the deleted messages. |
  | is_permanent | bool | True, if the messages are permanently deleted by a user (as opposed to just becoming inaccessible). |
  | from_cache | bool | True, if the messages are deleted only from the cache and can possibly be retrieved again in the future. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_delete_messages.html).
  """

  defstruct "@type": "updateDeleteMessages", "@extra": nil, chat_id: nil, message_ids: nil, is_permanent: nil, from_cache: nil
end
defmodule ChatActionRecordingVideo do
  @moduledoc  """
  The user is recording a video.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_recording_video.html).
  """

  defstruct "@type": "chatActionRecordingVideo", "@extra": nil
end
defmodule ConnectionState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_connection_state.html).
  """

  defstruct "@type": "ConnectionState", "@extra": nil
end
defmodule MessageContent do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_message_content.html).
  """

  defstruct "@type": "MessageContent", "@extra": nil
end
defmodule CallProblemSilentRemote do
  @moduledoc  """
  The other side couldn't hear the user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_silent_remote.html).
  """

  defstruct "@type": "callProblemSilentRemote", "@extra": nil
end
defmodule PassportElements do
  @moduledoc  """
  Contains information about saved Telegram Passport elements.

  | Name | Type | Description |
  |------|------| ------------|
  | elements | PassportElement | Telegram Passport elements. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_elements.html).
  """

  defstruct "@type": "passportElements", "@extra": nil, elements: nil
end
defmodule ChatReportReasonPersonalDetails do
  @moduledoc  """
  The chat contains messages with personal details.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_report_reason_personal_details.html).
  """

  defstruct "@type": "chatReportReasonPersonalDetails", "@extra": nil
end
defmodule TMeUrlTypeSupergroup do
  @moduledoc  """
  A URL linking to a public supergroup or channel.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | int53 | Identifier of the supergroup or channel. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url_type_supergroup.html).
  """

  defstruct "@type": "tMeUrlTypeSupergroup", "@extra": nil, supergroup_id: nil
end
defmodule TextEntityTypePhoneNumber do
  @moduledoc  """
  A phone number.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_phone_number.html).
  """

  defstruct "@type": "textEntityTypePhoneNumber", "@extra": nil
end
defmodule RemoteFile do
  @moduledoc  """
  Represents a remote file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Remote file identifier; may be empty. Can be used by the current user across application restarts or even from other devices. Uniquely identifies a file, but a file can have a lot of different valid identifiers. If the ID starts with "<a href="http://">http://</a>" or "<a href="https://">https://</a>", it represents the HTTP URL of the file. TDLib is currently unable to download files if only their URL is known. If downloadFile/addFileToDownloads is called on such a file or if it is sent to a secret chat, TDLib starts a file generation process by sending <a class="el" href="classtd_1_1td__api_1_1update_file_generation_start.html">updateFileGenerationStart</a> to the application with the HTTP URL in the original_path and "#url#" as the conversion string. Application must generate the file by downloading it to the specified location. |
  | unique_id | string | Unique file identifier; may be empty if unknown. The unique file identifier which is the same for the same file even for different users and is persistent over time. |
  | is_uploading_active | bool | True, if the file is currently being uploaded (or a remote copy is being generated by some other means). |
  | is_uploading_completed | bool | True, if a remote copy is fully available. |
  | uploaded_size | int53 | Size of the remote available part of the file, in bytes; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1remote_file.html).
  """

  defstruct "@type": "remoteFile", "@extra": nil, id: nil, unique_id: nil, is_uploading_active: nil, is_uploading_completed: nil, uploaded_size: nil
end
defmodule PassportElementErrorSourceTranslationFiles do
  @moduledoc  """
  The translation of the document contains an error. The error will be considered resolved when the list of translation files changes.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_translation_files.html).
  """

  defstruct "@type": "passportElementErrorSourceTranslationFiles", "@extra": nil
end
defmodule UpdateInstalledStickerSets do
  @moduledoc  """
  The list of installed sticker sets was updated.

  | Name | Type | Description |
  |------|------| ------------|
  | is_masks | bool | True, if the list of installed mask sticker sets was updated. |
  | sticker_set_ids | int64 | The new list of installed ordinary sticker sets. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_installed_sticker_sets.html).
  """

  defstruct "@type": "updateInstalledStickerSets", "@extra": nil, is_masks: nil, sticker_set_ids: nil
end
defmodule ChatEvents do
  @moduledoc  """
  Contains a list of chat events.

  | Name | Type | Description |
  |------|------| ------------|
  | events | chatEvent | List of events. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_events.html).
  """

  defstruct "@type": "chatEvents", "@extra": nil, events: nil
end
defmodule PushReceiverId do
  @moduledoc  """
  Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | The globally unique identifier of push notification subscription. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_receiver_id.html).
  """

  defstruct "@type": "pushReceiverId", "@extra": nil, id: nil
end
defmodule ChatStatistics do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_statistics.html).
  """

  defstruct "@type": "ChatStatistics", "@extra": nil
end
defmodule InputIdentityDocument do
  @moduledoc  """
  An identity document to be saved to Telegram Passport.

  | Name | Type | Description |
  |------|------| ------------|
  | number | string | Document number; 1-24 characters. |
  | expiry_date | date | Document expiry date; pass null if not applicable. |
  | front_side | InputFile | Front side of the document. |
  | reverse_side | InputFile | Reverse side of the document; only for driver license and identity card; pass null otherwise. |
  | selfie | InputFile | Selfie with the document; pass null if unavailable. |
  | translation | InputFile | List of files containing a certified English translation of the document. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_identity_document.html).
  """

  defstruct "@type": "inputIdentityDocument", "@extra": nil, number: nil, expiry_date: nil, front_side: nil, reverse_side: nil, selfie: nil, translation: nil
end
defmodule UserPrivacySettingRuleRestrictAll do
  @moduledoc  """
  A rule to restrict all users from doing something.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_all.html).
  """

  defstruct "@type": "userPrivacySettingRuleRestrictAll", "@extra": nil
end
defmodule InputCredentialsSaved do
  @moduledoc  """
  Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password.

  | Name | Type | Description |
  |------|------| ------------|
  | saved_credentials_id | string | Identifier of the saved credentials. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_saved.html).
  """

  defstruct "@type": "inputCredentialsSaved", "@extra": nil, saved_credentials_id: nil
end
defmodule ChatEventStickerSetChanged do
  @moduledoc  """
  The supergroup sticker set was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_sticker_set_id | int64 | Previous identifier of the chat sticker set; 0 if none. |
  | new_sticker_set_id | int64 | New identifier of the chat sticker set; 0 if none. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_sticker_set_changed.html).
  """

  defstruct "@type": "chatEventStickerSetChanged", "@extra": nil, old_sticker_set_id: nil, new_sticker_set_id: nil
end
defmodule LogStreamDefault do
  @moduledoc  """
  The log is written to stderr or an OS specific log.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1log_stream_default.html).
  """

  defstruct "@type": "logStreamDefault", "@extra": nil
end
defmodule JsonValueNumber do
  @moduledoc  """
  Represents a numeric JSON value.

  | Name | Type | Description |
  |------|------| ------------|
  | value | double | The value. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_number.html).
  """

  defstruct "@type": "jsonValueNumber", "@extra": nil, value: nil
end
defmodule ChatEventVideoChatParticipantIsMutedToggled do
  @moduledoc  """
  A video chat participant was muted or unmuted.

  | Name | Type | Description |
  |------|------| ------------|
  | participant_id | MessageSender | Identifier of the affected group call participant. |
  | is_muted | bool | New value of is_muted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_participant_is_muted_toggled.html).
  """

  defstruct "@type": "chatEventVideoChatParticipantIsMutedToggled", "@extra": nil, participant_id: nil, is_muted: nil
end
defmodule OptionValueEmpty do
  @moduledoc  """
  Represents an unknown option or an option which has a default value.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1option_value_empty.html).
  """

  defstruct "@type": "optionValueEmpty", "@extra": nil
end
defmodule CheckChatUsernameResult do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_check_chat_username_result.html).
  """

  defstruct "@type": "CheckChatUsernameResult", "@extra": nil
end
defmodule InlineQueryResult do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_inline_query_result.html).
  """

  defstruct "@type": "InlineQueryResult", "@extra": nil
end
defmodule NotificationSettingsScopeChannelChats do
  @moduledoc  """
  Notification settings applied to all channel chats when the corresponding chat setting has a default value.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_settings_scope_channel_chats.html).
  """

  defstruct "@type": "notificationSettingsScopeChannelChats", "@extra": nil
end
defmodule ChatActionBarReportUnrelatedLocation do
  @moduledoc  """
  The chat is a location-based supergroup, which can be reported as having unrelated location using the method reportChat with the reason chatReportReasonUnrelatedLocation.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_report_unrelated_location.html).
  """

  defstruct "@type": "chatActionBarReportUnrelatedLocation", "@extra": nil
end
defmodule SearchMessagesFilterVideo do
  @moduledoc  """
  Returns only video messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_video.html).
  """

  defstruct "@type": "searchMessagesFilterVideo", "@extra": nil
end
defmodule ChatLists do
  @moduledoc  """
  Contains a list of chat lists.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_lists | ChatList | List of chat lists. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_lists.html).
  """

  defstruct "@type": "chatLists", "@extra": nil, chat_lists: nil
end
defmodule DeviceTokenMicrosoftPush do
  @moduledoc  """
  A token for Microsoft Push Notification Service.

  | Name | Type | Description |
  |------|------| ------------|
  | channel_uri | string | Push notification channel URI; may be empty to deregister a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_microsoft_push.html).
  """

  defstruct "@type": "deviceTokenMicrosoftPush", "@extra": nil, channel_uri: nil
end
defmodule TermsOfService do
  @moduledoc  """
  Contains Telegram terms of service.

  | Name | Type | Description |
  |------|------| ------------|
  | text | formattedText | Text of the terms of service. |
  | min_user_age | int32 | The minimum age of a user to be able to accept the terms; 0 if age isn't restricted. |
  | show_popup | bool | True, if a blocking popup with terms of service must be shown to the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1terms_of_service.html).
  """

  defstruct "@type": "termsOfService", "@extra": nil, text: nil, min_user_age: nil, show_popup: nil
end
defmodule ChatMemberStatusBanned do
  @moduledoc  """
  The user or the chat was banned (and hence is not a member of the chat). Implies the user can't return to the chat, view messages, or be used as a participant identifier to join a video chat of the chat.

  | Name | Type | Description |
  |------|------| ------------|
  | banned_until_date | int32 | Point in time (Unix timestamp) when the user will be unbanned; 0 if never. If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is considered to be banned forever. Always 0 in basic groups. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_member_status_banned.html).
  """

  defstruct "@type": "chatMemberStatusBanned", "@extra": nil, banned_until_date: nil
end
defmodule BotCommandScope do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_bot_command_scope.html).
  """

  defstruct "@type": "BotCommandScope", "@extra": nil
end
defmodule SessionTypeAndroid do
  @moduledoc  """
  The session is running on an Android device.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_android.html).
  """

  defstruct "@type": "sessionTypeAndroid", "@extra": nil
end
defmodule InlineQueryResultContact do
  @moduledoc  """
  Represents a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | contact | contact | A user contact. |
  | thumbnail | thumbnail | Result thumbnail in JPEG format; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_contact.html).
  """

  defstruct "@type": "inlineQueryResultContact", "@extra": nil, id: nil, contact: nil, thumbnail: nil
end
defmodule File do
  @moduledoc  """
  Represents a file.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Unique file identifier. |
  | size | int53 | File size, in bytes; 0 if unknown. |
  | expected_size | int53 | Approximate file size in bytes in case the exact file size is unknown. Can be used to show download/upload progress. |
  | local | localFile | Information about the local copy of the file. |
  | remote | remoteFile | Information about the remote copy of the file. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file.html).
  """

  defstruct "@type": "file", "@extra": nil, id: nil, size: nil, expected_size: nil, local: nil, remote: nil
end
defmodule UpdateMessageLiveLocationViewed do
  @moduledoc  """
  A message with a live location was viewed. When the update is received, the application is supposed to update the live location.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Identifier of the chat with the live location message. |
  | message_id | int53 | Identifier of the message with live location. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_live_location_viewed.html).
  """

  defstruct "@type": "updateMessageLiveLocationViewed", "@extra": nil, chat_id: nil, message_id: nil
end
defmodule UpdateUser do
  @moduledoc  """
  Some data of a user has changed. This update is guaranteed to come before the user identifier is returned to the application.

  | Name | Type | Description |
  |------|------| ------------|
  | user | user | New data about the user. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user.html).
  """

  defstruct "@type": "updateUser", "@extra": nil, user: nil
end
defmodule MessageLinkInfo do
  @moduledoc  """
  Contains information about a link to a message in a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | is_public | bool | True, if the link is a public link for a message in a chat. |
  | chat_id | int53 | If found, identifier of the chat to which the message belongs, 0 otherwise. |
  | message | message | If found, the linked message; may be null. |
  | media_timestamp | int32 | Timestamp from which the video/audio/video note/voice note playing must start, in seconds; 0 if not specified. The media can be in the message content or in its web page preview. |
  | for_album | bool | True, if the whole media album to which the message belongs is linked. |
  | for_comment | bool | True, if the message is linked as a channel post comment or from a message thread. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_link_info.html).
  """

  defstruct "@type": "messageLinkInfo", "@extra": nil, is_public: nil, chat_id: nil, message: nil, media_timestamp: nil, for_album: nil, for_comment: nil
end
defmodule SearchMessagesFilterChatPhoto do
  @moduledoc  """
  Returns only messages containing chat photos.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_chat_photo.html).
  """

  defstruct "@type": "searchMessagesFilterChatPhoto", "@extra": nil
end
defmodule InputInvoiceName do
  @moduledoc  """
  An invoice from a link of the type internalLinkTypeInvoice.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Name of the invoice. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_invoice_name.html).
  """

  defstruct "@type": "inputInvoiceName", "@extra": nil, name: nil
end
defmodule InputFileGenerated do
  @moduledoc  """
  A file generated by the application.

  | Name | Type | Description |
  |------|------| ------------|
  | original_path | string | Local path to a file from which the file is generated; may be empty if there is no such file. |
  | conversion | string | String specifying the conversion applied to the original file; must be persistent across application restarts. Conversions beginning with '#' are reserved for internal TDLib usage. |
  | expected_size | int53 | Expected size of the generated file, in bytes; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_file_generated.html).
  """

  defstruct "@type": "inputFileGenerated", "@extra": nil, original_path: nil, conversion: nil, expected_size: nil
end
defmodule AvailableReaction do
  @moduledoc  """
  Represents an available reaction.

  | Name | Type | Description |
  |------|------| ------------|
  | reaction | string | Text representation of the reaction. |
  | needs_premium | bool | True, if Telegram Premium is needed to send the reaction. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1available_reaction.html).
  """

  defstruct "@type": "availableReaction", "@extra": nil, reaction: nil, needs_premium: nil
end
defmodule FileTypeWallpaper do
  @moduledoc  """
  The file is a wallpaper or a background pattern.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_wallpaper.html).
  """

  defstruct "@type": "fileTypeWallpaper", "@extra": nil
end
defmodule CallbackQueryAnswer do
  @moduledoc  """
  Contains a bot's answer to a callback query.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text of the answer. |
  | show_alert | bool | True, if an alert must be shown to the user instead of a toast notification. |
  | url | string | URL to be opened. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1callback_query_answer.html).
  """

  defstruct "@type": "callbackQueryAnswer", "@extra": nil, text: nil, show_alert: nil, url: nil
end
defmodule GroupCallStreams do
  @moduledoc  """
  Represents a list of group call streams.

  | Name | Type | Description |
  |------|------| ------------|
  | streams | groupCallStream | A list of group call streams. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_streams.html).
  """

  defstruct "@type": "groupCallStreams", "@extra": nil, streams: nil
end
defmodule LoginUrlInfoRequestConfirmation do
  @moduledoc  """
  An authorization confirmation dialog needs to be shown to the user.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | An HTTP URL to be opened. |
  | domain | string | A domain of the URL. |
  | bot_user_id | int53 | User identifier of a bot linked with the website. |
  | request_write_access | bool | True, if the user needs to be requested to give the permission to the bot to send them messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1login_url_info_request_confirmation.html).
  """

  defstruct "@type": "loginUrlInfoRequestConfirmation", "@extra": nil, url: nil, domain: nil, bot_user_id: nil, request_write_access: nil
end
defmodule ChatInviteLinks do
  @moduledoc  """
  Contains a list of chat invite links.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of chat invite links found. |
  | invite_links | chatInviteLink | List of invite links. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_invite_links.html).
  """

  defstruct "@type": "chatInviteLinks", "@extra": nil, total_count: nil, invite_links: nil
end
defmodule PushMessageContentAnimation do
  @moduledoc  """
  An animation message (GIF-style).

  | Name | Type | Description |
  |------|------| ------------|
  | animation | animation | Message content; may be null. |
  | caption | string | Animation caption. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_animation.html).
  """

  defstruct "@type": "pushMessageContentAnimation", "@extra": nil, animation: nil, caption: nil, is_pinned: nil
end
defmodule ChatActionUploadingVideoNote do
  @moduledoc  """
  The user is uploading a video note.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | int32 | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_video_note.html).
  """

  defstruct "@type": "chatActionUploadingVideoNote", "@extra": nil, progress: nil
end
defmodule CallProblemInterruptions do
  @moduledoc  """
  The other side kept disappearing.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_interruptions.html).
  """

  defstruct "@type": "callProblemInterruptions", "@extra": nil
end
defmodule ThumbnailFormatWebm do
  @moduledoc  """
  The thumbnail is in WEBM format. It will be used only for WEBM sticker sets.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_webm.html).
  """

  defstruct "@type": "thumbnailFormatWebm", "@extra": nil
end
defmodule ChatListMain do
  @moduledoc  """
  A main list of chats.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_list_main.html).
  """

  defstruct "@type": "chatListMain", "@extra": nil
end
defmodule ChatActionBar do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_action_bar.html).
  """

  defstruct "@type": "ChatActionBar", "@extra": nil
end
defmodule ChatMembersFilterBots do
  @moduledoc  """
  Returns bot members of the chat.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_bots.html).
  """

  defstruct "@type": "chatMembersFilterBots", "@extra": nil
end
defmodule ChatsNearby do
  @moduledoc  """
  Represents a list of chats located nearby.

  | Name | Type | Description |
  |------|------| ------------|
  | users_nearby | chatNearby | List of users nearby. |
  | supergroups_nearby | chatNearby | List of location-based supergroups nearby. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chats_nearby.html).
  """

  defstruct "@type": "chatsNearby", "@extra": nil, users_nearby: nil, supergroups_nearby: nil
end
defmodule UserPrivacySettingShowLinkInForwardedMessages do
  @moduledoc  """
  A privacy setting for managing whether a link to the user's account is included in forwarded messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_link_in_forwarded_messages.html).
  """

  defstruct "@type": "userPrivacySettingShowLinkInForwardedMessages", "@extra": nil
end
defmodule InternalLinkTypeVideoChat do
  @moduledoc  """
  The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process the link.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_username | string | Username of the chat with the video chat. |
  | invite_hash | string | If non-empty, invite hash to be used to join the video chat without being muted by administrators. |
  | is_live_stream | bool | True, if the video chat is expected to be a live stream in a channel or a broadcast group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_video_chat.html).
  """

  defstruct "@type": "internalLinkTypeVideoChat", "@extra": nil, chat_username: nil, invite_hash: nil, is_live_stream: nil
end
defmodule InputPassportElementErrorSourceFiles do
  @moduledoc  """
  The list of attached files contains an error. The error is considered resolved when the file list changes.

  | Name | Type | Description |
  |------|------| ------------|
  | file_hashes | bytes | Current hashes of all attached files. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_files.html).
  """

  defstruct "@type": "inputPassportElementErrorSourceFiles", "@extra": nil, file_hashes: nil
end
defmodule VideoNote do
  @moduledoc  """
  Describes a video note. The video must be equal in width and height, cropped to a circle, and stored in MPEG4 format.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | int32 | Duration of the video, in seconds; as defined by the sender. |
  | length | int32 | Video width and height; as defined by the sender. |
  | minithumbnail | minithumbnail | Video minithumbnail; may be null. |
  | thumbnail | thumbnail | Video thumbnail in JPEG format; as defined by the sender; may be null. |
  | video | file | File containing the video. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1video_note.html).
  """

  defstruct "@type": "videoNote", "@extra": nil, duration: nil, length: nil, minithumbnail: nil, thumbnail: nil, video: nil
end
defmodule PremiumFeatureAnimatedProfilePhoto do
  @moduledoc  """
  Profile photo animation on message and chat screens.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_animated_profile_photo.html).
  """

  defstruct "@type": "premiumFeatureAnimatedProfilePhoto", "@extra": nil
end
defmodule MessagePinMessage do
  @moduledoc  """
  A message has been pinned.

  | Name | Type | Description |
  |------|------| ------------|
  | message_id | int53 | Identifier of the pinned message, can be an identifier of a deleted message or 0. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_pin_message.html).
  """

  defstruct "@type": "messagePinMessage", "@extra": nil, message_id: nil
end
defmodule UserPrivacySettingAllowCalls do
  @moduledoc  """
  A privacy setting for managing whether the user can be called.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_allow_calls.html).
  """

  defstruct "@type": "userPrivacySettingAllowCalls", "@extra": nil
end
defmodule SearchMessagesFilterUnreadMention do
  @moduledoc  """
  Returns only messages with unread mentions of the current user, or messages that are replies to their messages. When using this filter the results can't be additionally filtered by a query, a message thread or by the sending user.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_unread_mention.html).
  """

  defstruct "@type": "searchMessagesFilterUnreadMention", "@extra": nil
end
defmodule CallDiscardReason do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_call_discard_reason.html).
  """

  defstruct "@type": "CallDiscardReason", "@extra": nil
end
defmodule BotCommand do
  @moduledoc  """
  Represents a command supported by a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | command | string | Text of the bot command. |
  | description | string | Description of the bot command. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command.html).
  """

  defstruct "@type": "botCommand", "@extra": nil, command: nil, description: nil
end
defmodule Sticker do
  @moduledoc  """
  Describes a sticker.

  | Name | Type | Description |
  |------|------| ------------|
  | set_id | int64 | The identifier of the sticker set to which the sticker belongs; 0 if none. |
  | width | int32 | Sticker width; as defined by the sender. |
  | height | int32 | Sticker height; as defined by the sender. |
  | emoji | string | Emoji corresponding to the sticker. |
  | type | StickerType | Sticker type. |
  | outline | closedVectorPath | Sticker's outline represented as a list of closed vector paths; may be empty. The coordinate system origin is in the upper-left corner. |
  | thumbnail | thumbnail | Sticker thumbnail in WEBP or JPEG format; may be null. |
  | premium_animation | file | Premium animation of the sticker; may be null. If present, only Premium users can send the sticker. |
  | sticker | file | File containing the sticker. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker.html).
  """

  defstruct "@type": "sticker", "@extra": nil, set_id: nil, width: nil, height: nil, emoji: nil, type: nil, outline: nil, thumbnail: nil, premium_animation: nil, sticker: nil
end
defmodule PremiumState do
  @moduledoc  """
  Contains state of Telegram Premium subscription and promotion videos for Premium features.

  | Name | Type | Description |
  |------|------| ------------|
  | state | formattedText | Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription. |
  | currency | string | ISO 4217 currency code for Telegram Premium subscription payment. |
  | monthly_amount | int53 | Monthly subscription payment for Telegram Premium subscription, in the smallest units of the currency. |
  | animations | premiumFeaturePromotionAnimation | The list of available promotion animations for Premium features. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_state.html).
  """

  defstruct "@type": "premiumState", "@extra": nil, state: nil, currency: nil, monthly_amount: nil, animations: nil
end
defmodule SearchMessagesFilterUrl do
  @moduledoc  """
  Returns only messages containing URLs.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_url.html).
  """

  defstruct "@type": "searchMessagesFilterUrl", "@extra": nil
end
defmodule MessageExpiredPhoto do
  @moduledoc  """
  An expired photo message (self-destructed after TTL has elapsed).


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_expired_photo.html).
  """

  defstruct "@type": "messageExpiredPhoto", "@extra": nil
end
defmodule ChatEventLogFilters do
  @moduledoc  """
  Represents a set of filters used to obtain a chat event log.

  | Name | Type | Description |
  |------|------| ------------|
  | message_edits | bool | True, if message edits need to be returned. |
  | message_deletions | bool | True, if message deletions need to be returned. |
  | message_pins | bool | True, if pin/unpin events need to be returned. |
  | member_joins | bool | True, if members joining events need to be returned. |
  | member_leaves | bool | True, if members leaving events need to be returned. |
  | member_invites | bool | True, if invited member events need to be returned. |
  | member_promotions | bool | True, if member promotion/demotion events need to be returned. |
  | member_restrictions | bool | True, if member restricted/unrestricted/banned/unbanned events need to be returned. |
  | info_changes | bool | True, if changes in chat information need to be returned. |
  | setting_changes | bool | True, if changes in chat settings need to be returned. |
  | invite_link_changes | bool | True, if changes to invite links need to be returned. |
  | video_chat_changes | bool | True, if video chat actions need to be returned. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_log_filters.html).
  """

  defstruct "@type": "chatEventLogFilters", "@extra": nil, message_edits: nil, message_deletions: nil, message_pins: nil, member_joins: nil, member_leaves: nil, member_invites: nil, member_promotions: nil, member_restrictions: nil, info_changes: nil, setting_changes: nil, invite_link_changes: nil, video_chat_changes: nil
end
defmodule InputInlineQueryResultGame do
  @moduledoc  """
  Represents a game.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | game_short_name | string | Short name of the game. |
  | reply_markup | ReplyMarkup | The message reply markup; pass null if none. Must be of type <a class="el" href="classtd_1_1td__api_1_1reply_markup_inline_keyboard.html">replyMarkupInlineKeyboard</a> or null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_inline_query_result_game.html).
  """

  defstruct "@type": "inputInlineQueryResultGame", "@extra": nil, id: nil, game_short_name: nil, reply_markup: nil
end
defmodule DownloadedFileCounts do
  @moduledoc  """
  Contains number of being downloaded and recently downloaded files found.

  | Name | Type | Description |
  |------|------| ------------|
  | active_count | int32 | Number of active file downloads found, including paused. |
  | paused_count | int32 | Number of paused file downloads found. |
  | completed_count | int32 | Number of completed file downloads found. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1downloaded_file_counts.html).
  """

  defstruct "@type": "downloadedFileCounts", "@extra": nil, active_count: nil, paused_count: nil, completed_count: nil
end
defmodule ChatActionChoosingContact do
  @moduledoc  """
  The user is picking a contact to send.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_choosing_contact.html).
  """

  defstruct "@type": "chatActionChoosingContact", "@extra": nil
end
defmodule InputPassportElementTemporaryRegistration do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's temporary registration.

  | Name | Type | Description |
  |------|------| ------------|
  | temporary_registration | inputPersonalDocument | The temporary registration document to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_temporary_registration.html).
  """

  defstruct "@type": "inputPassportElementTemporaryRegistration", "@extra": nil, temporary_registration: nil
end
defmodule PushMessageContentGame do
  @moduledoc  """
  A message with a game.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Game title, empty for pinned game message. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_game.html).
  """

  defstruct "@type": "pushMessageContentGame", "@extra": nil, title: nil, is_pinned: nil
end
defmodule RichTextSuperscript do
  @moduledoc  """
  A superscript rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_superscript.html).
  """

  defstruct "@type": "richTextSuperscript", "@extra": nil, text: nil
end
defmodule ProxyTypeHttp do
  @moduledoc  """
  A HTTP transparent proxy server.

  | Name | Type | Description |
  |------|------| ------------|
  | username | string | Username for logging in; may be empty. |
  | password | string | Password for logging in; may be empty. |
  | http_only | bool | Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy_type_http.html).
  """

  defstruct "@type": "proxyTypeHttp", "@extra": nil, username: nil, password: nil, http_only: nil
end
defmodule ChatAdministrators do
  @moduledoc  """
  Represents a list of chat administrators.

  | Name | Type | Description |
  |------|------| ------------|
  | administrators | chatAdministrator | A list of chat administrators. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_administrators.html).
  """

  defstruct "@type": "chatAdministrators", "@extra": nil, administrators: nil
end
defmodule PageBlockAnimation do
  @moduledoc  """
  An animation.

  | Name | Type | Description |
  |------|------| ------------|
  | animation | animation | Animation file; may be null. |
  | caption | pageBlockCaption | Animation caption. |
  | need_autoplay | bool | True, if the animation must be played automatically. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_animation.html).
  """

  defstruct "@type": "pageBlockAnimation", "@extra": nil, animation: nil, caption: nil, need_autoplay: nil
end
defmodule RichTextIcon do
  @moduledoc  """
  A small image inside the text.

  | Name | Type | Description |
  |------|------| ------------|
  | document | document | The image represented as a document. The image can be in GIF, JPEG or PNG format. |
  | width | int32 | Width of a bounding box in which the image must be shown; 0 if unknown. |
  | height | int32 | Height of a bounding box in which the image must be shown; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_icon.html).
  """

  defstruct "@type": "richTextIcon", "@extra": nil, document: nil, width: nil, height: nil
end
defmodule DeviceTokenTizenPush do
  @moduledoc  """
  A token for Tizen Push Service.

  | Name | Type | Description |
  |------|------| ------------|
  | reg_id | string | Push service registration identifier; may be empty to deregister a device. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_tizen_push.html).
  """

  defstruct "@type": "deviceTokenTizenPush", "@extra": nil, reg_id: nil
end
defmodule PushMessageContentGameScore do
  @moduledoc  """
  A new high score was achieved in a game.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Game title, empty for pinned message. |
  | score | int32 | New score, 0 for pinned message. |
  | is_pinned | bool | True, if the message is a pinned message with the specified content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1push_message_content_game_score.html).
  """

  defstruct "@type": "pushMessageContentGameScore", "@extra": nil, title: nil, score: nil, is_pinned: nil
end
defmodule NotificationGroupType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_notification_group_type.html).
  """

  defstruct "@type": "NotificationGroupType", "@extra": nil
end
defmodule ChatActionStartPlayingGame do
  @moduledoc  """
  The user has started to play a game.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_start_playing_game.html).
  """

  defstruct "@type": "chatActionStartPlayingGame", "@extra": nil
end
defmodule MessageBasicGroupChatCreate do
  @moduledoc  """
  A newly created basic group.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the basic group. |
  | member_user_ids | int53 | User identifiers of members in the basic group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_basic_group_chat_create.html).
  """

  defstruct "@type": "messageBasicGroupChatCreate", "@extra": nil, title: nil, member_user_ids: nil
end
defmodule PremiumSourceLink do
  @moduledoc  """
  A user opened an internal link of the type internalLinkTypePremiumFeatures.

  | Name | Type | Description |
  |------|------| ------------|
  | referrer | string | The referrer from the link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_source_link.html).
  """

  defstruct "@type": "premiumSourceLink", "@extra": nil, referrer: nil
end
defmodule SearchMessagesFilterMention do
  @moduledoc  """
  Returns only messages with mentions of the current user, or messages that are replies to their messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_mention.html).
  """

  defstruct "@type": "searchMessagesFilterMention", "@extra": nil
end
defmodule InlineKeyboardButtonType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_inline_keyboard_button_type.html).
  """

  defstruct "@type": "InlineKeyboardButtonType", "@extra": nil
end
defmodule CallDiscardReasonEmpty do
  @moduledoc  """
  The call wasn't discarded, or the reason is unknown.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_empty.html).
  """

  defstruct "@type": "callDiscardReasonEmpty", "@extra": nil
end
defmodule UpdateAnimatedEmojiMessageClicked do
  @moduledoc  """
  Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the screen. chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_id | int53 | Message identifier. |
  | sticker | sticker | The animated sticker to be played. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_animated_emoji_message_clicked.html).
  """

  defstruct "@type": "updateAnimatedEmojiMessageClicked", "@extra": nil, chat_id: nil, message_id: nil, sticker: nil
end
defmodule SearchMessagesFilterPinned do
  @moduledoc  """
  Returns only pinned messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_pinned.html).
  """

  defstruct "@type": "searchMessagesFilterPinned", "@extra": nil
end
defmodule Proxies do
  @moduledoc  """
  Represents a list of proxy servers.

  | Name | Type | Description |
  |------|------| ------------|
  | proxies | proxy | List of proxy servers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxies.html).
  """

  defstruct "@type": "proxies", "@extra": nil, proxies: nil
end
defmodule InternalLinkTypeStickerSet do
  @moduledoc  """
  The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker_set_name | string | Name of the sticker set. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_sticker_set.html).
  """

  defstruct "@type": "internalLinkTypeStickerSet", "@extra": nil, sticker_set_name: nil
end
defmodule SupergroupMembersFilterRestricted do
  @moduledoc  """
  Returns restricted supergroup members; can be used only by administrators.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_restricted.html).
  """

  defstruct "@type": "supergroupMembersFilterRestricted", "@extra": nil, query: nil
end
defmodule NotificationGroupTypeMentions do
  @moduledoc  """
  A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with unread mentions of the current user, replies to their messages, or a pinned message.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group_type_mentions.html).
  """

  defstruct "@type": "notificationGroupTypeMentions", "@extra": nil
end
defmodule LocalFile do
  @moduledoc  """
  Represents a local file.

  | Name | Type | Description |
  |------|------| ------------|
  | path | string | Local path to the locally available file part; may be empty. |
  | can_be_downloaded | bool | True, if it is possible to download or generate the file. |
  | can_be_deleted | bool | True, if the file can be deleted. |
  | is_downloading_active | bool | True, if the file is currently being downloaded (or a local copy is being generated by some other means). |
  | is_downloading_completed | bool | True, if the local copy is fully available. |
  | download_offset | int53 | Download will be started from this offset. downloaded_prefix_size is calculated from this offset. |
  | downloaded_prefix_size | int53 | If is_downloading_completed is false, then only some prefix of the file starting from download_offset is ready to be read. downloaded_prefix_size is the size of that prefix in bytes. |
  | downloaded_size | int53 | Total downloaded file size, in bytes. Can be used only for calculating download progress. The actual file size may be bigger, and some parts of it may contain garbage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1local_file.html).
  """

  defstruct "@type": "localFile", "@extra": nil, path: nil, can_be_downloaded: nil, can_be_deleted: nil, is_downloading_active: nil, is_downloading_completed: nil, download_offset: nil, downloaded_prefix_size: nil, downloaded_size: nil
end
defmodule UpdateTrendingStickerSets do
  @moduledoc  """
  The list of trending sticker sets was updated or some of them were viewed.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker_sets | trendingStickerSets | The prefix of the list of trending sticker sets with the newest trending sticker sets. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_trending_sticker_sets.html).
  """

  defstruct "@type": "updateTrendingStickerSets", "@extra": nil, sticker_sets: nil
end
defmodule PageBlockVerticalAlignmentTop do
  @moduledoc  """
  The content must be top-aligned.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_vertical_alignment_top.html).
  """

  defstruct "@type": "pageBlockVerticalAlignmentTop", "@extra": nil
end
defmodule PhoneNumberAuthenticationSettings do
  @moduledoc  """
  Contains settings for the authentication of the user's phone number.

  | Name | Type | Description |
  |------|------| ------------|
  | allow_flash_call | bool | Pass true if the authentication code may be sent via a flash call to the specified phone number. |
  | allow_missed_call | bool | Pass true if the authentication code may be sent via a missed call to the specified phone number. |
  | is_current_phone_number | bool | Pass true if the authenticated phone number is used on the current device. |
  | allow_sms_retriever_api | bool | For official applications only. True, if the application can use Android SMS Retriever API (requires Google Play Services >= 10.2) to automatically receive the authentication code from the SMS. See <a href="https://developers.google.com/identity/sms-retriever/">https://developers.google.com/identity/sms-retriever/</a> for more details. |
  | authentication_tokens | string | List of up to 20 authentication tokens, recently received in <a class="el" href="classtd_1_1td__api_1_1update_option.html">updateOption</a>("authentication_token") in previously logged out sessions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1phone_number_authentication_settings.html).
  """

  defstruct "@type": "phoneNumberAuthenticationSettings", "@extra": nil, allow_flash_call: nil, allow_missed_call: nil, is_current_phone_number: nil, allow_sms_retriever_api: nil, authentication_tokens: nil
end
defmodule TopChatCategoryBots do
  @moduledoc  """
  A category containing frequently used private chats with bot users.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1top_chat_category_bots.html).
  """

  defstruct "@type": "topChatCategoryBots", "@extra": nil
end
defmodule UpdateChatVideoChat do
  @moduledoc  """
  A chat video chat state has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | video_chat | videoChat | New value of video_chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_video_chat.html).
  """

  defstruct "@type": "updateChatVideoChat", "@extra": nil, chat_id: nil, video_chat: nil
end
defmodule CallStateReady do
  @moduledoc  """
  The call is ready to use.

  | Name | Type | Description |
  |------|------| ------------|
  | protocol | callProtocol | Call protocols supported by the peer. |
  | servers | callServer | List of available call servers. |
  | config | string | A JSON-encoded call config. |
  | encryption_key | bytes | Call encryption key. |
  | emojis | string | Encryption key emojis fingerprint. |
  | allow_p2p | bool | True, if peer-to-peer connection is allowed by users privacy settings. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_state_ready.html).
  """

  defstruct "@type": "callStateReady", "@extra": nil, protocol: nil, servers: nil, config: nil, encryption_key: nil, emojis: nil, allow_p2p: nil
end
defmodule CheckChatUsernameResultOk do
  @moduledoc  """
  The username can be set.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_chat_username_result_ok.html).
  """

  defstruct "@type": "checkChatUsernameResultOk", "@extra": nil
end
defmodule TextParseModeHTML do
  @moduledoc  """
  The text uses HTML-style formatting. The same as Telegram Bot API "HTML" parse mode.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_parse_mode_h_t_m_l.html).
  """

  defstruct "@type": "textParseModeHTML", "@extra": nil
end
defmodule InputChatPhotoStatic do
  @moduledoc  """
  A static photo in JPEG format.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | InputFile | Photo to be set as profile photo. Only <a class="el" href="classtd_1_1td__api_1_1input_file_local.html">inputFileLocal</a> and <a class="el" href="classtd_1_1td__api_1_1input_file_generated.html">inputFileGenerated</a> are allowed. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_chat_photo_static.html).
  """

  defstruct "@type": "inputChatPhotoStatic", "@extra": nil, photo: nil
end
defmodule CallDiscardReasonDeclined do
  @moduledoc  """
  The call was ended before the conversation started. It was declined by the other party.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_discard_reason_declined.html).
  """

  defstruct "@type": "callDiscardReasonDeclined", "@extra": nil
end
defmodule UpdateNewChatJoinRequest do
  @moduledoc  """
  A user sent a join request to a chat; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | request | chatJoinRequest | Join request. |
  | invite_link | chatInviteLink | The invite link, which was used to send join request; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_new_chat_join_request.html).
  """

  defstruct "@type": "updateNewChatJoinRequest", "@extra": nil, chat_id: nil, request: nil, invite_link: nil
end
defmodule TextEntityTypeStrikethrough do
  @moduledoc  """
  A strikethrough text.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_strikethrough.html).
  """

  defstruct "@type": "textEntityTypeStrikethrough", "@extra": nil
end
defmodule ChatEventVideoChatParticipantVolumeLevelChanged do
  @moduledoc  """
  A video chat participant volume level was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | participant_id | MessageSender | Identifier of the affected group call participant. |
  | volume_level | int32 | New value of volume_level; 1-20000 in hundreds of percents. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_video_chat_participant_volume_level_changed.html).
  """

  defstruct "@type": "chatEventVideoChatParticipantVolumeLevelChanged", "@extra": nil, participant_id: nil, volume_level: nil
end
defmodule DeviceTokenApplePushVoIP do
  @moduledoc  """
  A token for Apple Push Notification service VoIP notifications.

  | Name | Type | Description |
  |------|------| ------------|
  | device_token | string | Device token; may be empty to deregister a device. |
  | is_app_sandbox | bool | True, if App Sandbox is enabled. |
  | encrypt | bool | True, if push notifications must be additionally encrypted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_apple_push_vo_i_p.html).
  """

  defstruct "@type": "deviceTokenApplePushVoIP", "@extra": nil, device_token: nil, is_app_sandbox: nil, encrypt: nil
end
defmodule MessageSendingStateFailed do
  @moduledoc  """
  The message failed to be sent.

  | Name | Type | Description |
  |------|------| ------------|
  | error_code | int32 | An error code; 0 if unknown. |
  | error_message | string | Error message. |
  | can_retry | bool | True, if the message can be re-sent. |
  | need_another_sender | bool | True, if the message can be re-sent only on behalf of a different sender. |
  | retry_after | double | Time left before the message can be re-sent, in seconds. No update is sent when this field changes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sending_state_failed.html).
  """

  defstruct "@type": "messageSendingStateFailed", "@extra": nil, error_code: nil, error_message: nil, can_retry: nil, need_another_sender: nil, retry_after: nil
end
defmodule ProxyTypeMtproto do
  @moduledoc  """
  An MTProto proxy server.

  | Name | Type | Description |
  |------|------| ------------|
  | secret | string | The proxy's secret in hexadecimal encoding. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy_type_mtproto.html).
  """

  defstruct "@type": "proxyTypeMtproto", "@extra": nil, secret: nil
end
defmodule MessageForwardOriginMessageImport do
  @moduledoc  """
  The message was imported from an exported message history.

  | Name | Type | Description |
  |------|------| ------------|
  | sender_name | string | Name of the sender. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_forward_origin_message_import.html).
  """

  defstruct "@type": "messageForwardOriginMessageImport", "@extra": nil, sender_name: nil
end
defmodule InlineQueryResultVenue do
  @moduledoc  """
  Represents information about a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | venue | venue | Venue result. |
  | thumbnail | thumbnail | Result thumbnail in JPEG format; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_venue.html).
  """

  defstruct "@type": "inlineQueryResultVenue", "@extra": nil, id: nil, venue: nil, thumbnail: nil
end
defmodule PassportElementPhoneNumber do
  @moduledoc  """
  A Telegram Passport element containing the user's phone number.

  | Name | Type | Description |
  |------|------| ------------|
  | phone_number | string | Phone number. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_phone_number.html).
  """

  defstruct "@type": "passportElementPhoneNumber", "@extra": nil, phone_number: nil
end
defmodule SuggestedActionCheckPassword do
  @moduledoc  """
  Suggests the user to check whether they still remember their 2-step verification password.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_check_password.html).
  """

  defstruct "@type": "suggestedActionCheckPassword", "@extra": nil
end
defmodule MessageContactRegistered do
  @moduledoc  """
  A contact has registered with Telegram.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_contact_registered.html).
  """

  defstruct "@type": "messageContactRegistered", "@extra": nil
end
defmodule TextEntityTypeBotCommand do
  @moduledoc  """
  A bot command, beginning with "/".


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_bot_command.html).
  """

  defstruct "@type": "textEntityTypeBotCommand", "@extra": nil
end
defmodule FileTypeAnimation do
  @moduledoc  """
  The file is an animation.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_animation.html).
  """

  defstruct "@type": "fileTypeAnimation", "@extra": nil
end
defmodule MessageChatChangePhoto do
  @moduledoc  """
  An updated chat photo.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | chatPhoto | New chat photo. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_change_photo.html).
  """

  defstruct "@type": "messageChatChangePhoto", "@extra": nil, photo: nil
end
defmodule ChatStatisticsChannel do
  @moduledoc  """
  A detailed statistics about a channel chat.

  | Name | Type | Description |
  |------|------| ------------|
  | period | dateRange | A period to which the statistics applies. |
  | member_count | statisticalValue | Number of members in the chat. |
  | mean_view_count | statisticalValue | Mean number of times the recently sent messages was viewed. |
  | mean_share_count | statisticalValue | Mean number of times the recently sent messages was shared. |
  | enabled_notifications_percentage | double | A percentage of users with enabled notifications for the chat. |
  | member_count_graph | StatisticalGraph | A graph containing number of members in the chat. |
  | join_graph | StatisticalGraph | A graph containing number of members joined and left the chat. |
  | mute_graph | StatisticalGraph | A graph containing number of members muted and unmuted the chat. |
  | view_count_by_hour_graph | StatisticalGraph | A graph containing number of message views in a given hour in the last two weeks. |
  | view_count_by_source_graph | StatisticalGraph | A graph containing number of message views per source. |
  | join_by_source_graph | StatisticalGraph | A graph containing number of new member joins per source. |
  | language_graph | StatisticalGraph | A graph containing number of users viewed chat messages per language. |
  | message_interaction_graph | StatisticalGraph | A graph containing number of chat message views and shares. |
  | instant_view_interaction_graph | StatisticalGraph | A graph containing number of views of associated with the chat instant views. |
  | recent_message_interactions | chatStatisticsMessageInteractionInfo | Detailed statistics about number of views and shares of recently sent messages. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_statistics_channel.html).
  """

  defstruct "@type": "chatStatisticsChannel", "@extra": nil, period: nil, member_count: nil, mean_view_count: nil, mean_share_count: nil, enabled_notifications_percentage: nil, member_count_graph: nil, join_graph: nil, mute_graph: nil, view_count_by_hour_graph: nil, view_count_by_source_graph: nil, join_by_source_graph: nil, language_graph: nil, message_interaction_graph: nil, instant_view_interaction_graph: nil, recent_message_interactions: nil
end
defmodule SessionTypeBrave do
  @moduledoc  """
  The session is running on the Brave browser.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_brave.html).
  """

  defstruct "@type": "sessionTypeBrave", "@extra": nil
end
defmodule OptionValue do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_option_value.html).
  """

  defstruct "@type": "OptionValue", "@extra": nil
end
defmodule InputInvoice do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_invoice.html).
  """

  defstruct "@type": "InputInvoice", "@extra": nil
end
defmodule AuthorizationStateWaitPassword do
  @moduledoc  """
  The user has been authorized, but needs to enter a password to start using the application.

  | Name | Type | Description |
  |------|------| ------------|
  | password_hint | string | Hint for the password; may be empty. |
  | has_recovery_email_address | bool | True, if a recovery email address has been set up. |
  | recovery_email_address_pattern | string | Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_wait_password.html).
  """

  defstruct "@type": "authorizationStateWaitPassword", "@extra": nil, password_hint: nil, has_recovery_email_address: nil, recovery_email_address_pattern: nil
end
defmodule PassportElementErrorSource do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_passport_element_error_source.html).
  """

  defstruct "@type": "PassportElementErrorSource", "@extra": nil
end
defmodule SecretChatStateReady do
  @moduledoc  """
  The secret chat is ready to use.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1secret_chat_state_ready.html).
  """

  defstruct "@type": "secretChatStateReady", "@extra": nil
end
defmodule PremiumLimitTypeBioLength do
  @moduledoc  """
  The maximum length of the user's bio.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_bio_length.html).
  """

  defstruct "@type": "premiumLimitTypeBioLength", "@extra": nil
end
defmodule PassportElementInternalPassport do
  @moduledoc  """
  A Telegram Passport element containing the user's internal passport.

  | Name | Type | Description |
  |------|------| ------------|
  | internal_passport | identityDocument | Internal passport. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_internal_passport.html).
  """

  defstruct "@type": "passportElementInternalPassport", "@extra": nil, internal_passport: nil
end
defmodule Animation do
  @moduledoc  """
  Describes an animation file. The animation must be encoded in GIF or MPEG4 format.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | int32 | Duration of the animation, in seconds; as defined by the sender. |
  | width | int32 | Width of the animation. |
  | height | int32 | Height of the animation. |
  | file_name | string | Original name of the file; as defined by the sender. |
  | mime_type | string | MIME type of the file, usually "image/gif" or "video/mp4". |
  | has_stickers | bool | True, if stickers were added to the animation. The list of corresponding sticker set can be received using <a class="el" href="classtd_1_1td__api_1_1get_attached_sticker_sets.html">getAttachedStickerSets</a>. |
  | minithumbnail | minithumbnail | Animation minithumbnail; may be null. |
  | thumbnail | thumbnail | Animation thumbnail in JPEG or MPEG4 format; may be null. |
  | animation | file | File containing the animation. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animation.html).
  """

  defstruct "@type": "animation", "@extra": nil, duration: nil, width: nil, height: nil, file_name: nil, mime_type: nil, has_stickers: nil, minithumbnail: nil, thumbnail: nil, animation: nil
end
defmodule MessageChatUpgradeFrom do
  @moduledoc  """
  A supergroup has been created from a basic group.

  | Name | Type | Description |
  |------|------| ------------|
  | title | string | Title of the newly created supergroup. |
  | basic_group_id | int53 | The identifier of the original basic group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_upgrade_from.html).
  """

  defstruct "@type": "messageChatUpgradeFrom", "@extra": nil, title: nil, basic_group_id: nil
end
defmodule FileTypeNotificationSound do
  @moduledoc  """
  The file is a notification sound.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_notification_sound.html).
  """

  defstruct "@type": "fileTypeNotificationSound", "@extra": nil
end
defmodule ChatActionBarReportSpam do
  @moduledoc  """
  The chat can be reported as spam using the method reportChat with the reason chatReportReasonSpam.

  | Name | Type | Description |
  |------|------| ------------|
  | can_unarchive | bool | If true, the chat was automatically archived and can be moved back to the main chat list using <a class="el" href="classtd_1_1td__api_1_1add_chat_to_list.html">addChatToList</a> simultaneously with setting chat notification settings to default using <a class="el" href="classtd_1_1td__api_1_1set_chat_notification_settings.html">setChatNotificationSettings</a>. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_bar_report_spam.html).
  """

  defstruct "@type": "chatActionBarReportSpam", "@extra": nil, can_unarchive: nil
end
defmodule Emojis do
  @moduledoc  """
  Represents a list of emoji.

  | Name | Type | Description |
  |------|------| ------------|
  | emojis | string | List of emojis. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1emojis.html).
  """

  defstruct "@type": "emojis", "@extra": nil, emojis: nil
end
defmodule CanTransferOwnershipResultOk do
  @moduledoc  """
  The session can be used.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_transfer_ownership_result_ok.html).
  """

  defstruct "@type": "canTransferOwnershipResultOk", "@extra": nil
end
defmodule FileTypePhoto do
  @moduledoc  """
  The file is a photo.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_photo.html).
  """

  defstruct "@type": "fileTypePhoto", "@extra": nil
end
defmodule SavedCredentials do
  @moduledoc  """
  Contains information about saved card credentials.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the saved credentials. |
  | title | string | Title of the saved credentials. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1saved_credentials.html).
  """

  defstruct "@type": "savedCredentials", "@extra": nil, id: nil, title: nil
end
defmodule PassportElementErrorSourceSelfie do
  @moduledoc  """
  The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_selfie.html).
  """

  defstruct "@type": "passportElementErrorSourceSelfie", "@extra": nil
end
defmodule InlineQueryResultGame do
  @moduledoc  """
  Represents information about a game.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | game | game | Game result. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_game.html).
  """

  defstruct "@type": "inlineQueryResultGame", "@extra": nil, id: nil, game: nil
end
defmodule NotificationSound do
  @moduledoc  """
  Describes a notification sound in MP3 format.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Unique identifier of the notification sound. |
  | duration | int32 | Duration of the sound, in seconds. |
  | date | int32 | Point in time (Unix timestamp) when the sound was created. |
  | title | string | Title of the notification sound. |
  | data | string | Arbitrary data, defined while the sound was uploaded. |
  | sound | file | File containing the sound. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_sound.html).
  """

  defstruct "@type": "notificationSound", "@extra": nil, id: nil, duration: nil, date: nil, title: nil, data: nil, sound: nil
end
defmodule UserPrivacySettingShowProfilePhoto do
  @moduledoc  """
  A privacy setting for managing whether the user's profile photo is visible.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_profile_photo.html).
  """

  defstruct "@type": "userPrivacySettingShowProfilePhoto", "@extra": nil
end
defmodule Venue do
  @moduledoc  """
  Describes a venue.

  | Name | Type | Description |
  |------|------| ------------|
  | location | location | Venue location; as defined by the sender. |
  | title | string | Venue name; as defined by the sender. |
  | address | string | Venue address; as defined by the sender. |
  | provider | string | Provider of the venue database; as defined by the sender. Currently, only "foursquare" and "gplaces" (Google Places) need to be supported. |
  | id | string | Identifier of the venue in the provider database; as defined by the sender. |
  | type | string | Type of the venue in the provider database; as defined by the sender. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1venue.html).
  """

  defstruct "@type": "venue", "@extra": nil, location: nil, title: nil, address: nil, provider: nil, id: nil, type: nil
end
defmodule InlineQueryResultPhoto do
  @moduledoc  """
  Represents a photo.

  | Name | Type | Description |
  |------|------| ------------|
  | id | string | Unique identifier of the query result. |
  | photo | photo | Photo. |
  | title | string | Title of the result, if known. |
  | description | string | A short description of the result, if known. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_query_result_photo.html).
  """

  defstruct "@type": "inlineQueryResultPhoto", "@extra": nil, id: nil, photo: nil, title: nil, description: nil
end
defmodule UpdateScopeNotificationSettings do
  @moduledoc  """
  Notification settings for some type of chats were updated.

  | Name | Type | Description |
  |------|------| ------------|
  | scope | NotificationSettingsScope | Types of chats for which notification settings were updated. |
  | notification_settings | scopeNotificationSettings | The new notification settings. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_scope_notification_settings.html).
  """

  defstruct "@type": "updateScopeNotificationSettings", "@extra": nil, scope: nil, notification_settings: nil
end
defmodule PageBlockCaption do
  @moduledoc  """
  Contains a caption of an instant view web page block, consisting of a text and a trailing credit.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Content of the caption. |
  | credit | RichText | Block credit (like HTML tag <cite>). |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_caption.html).
  """

  defstruct "@type": "pageBlockCaption", "@extra": nil, text: nil, credit: nil
end
defmodule RichTextAnchor do
  @moduledoc  """
  An anchor.

  | Name | Type | Description |
  |------|------| ------------|
  | name | string | Anchor name. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_anchor.html).
  """

  defstruct "@type": "richTextAnchor", "@extra": nil, name: nil
end
defmodule MessageVideoNote do
  @moduledoc  """
  A video note message.

  | Name | Type | Description |
  |------|------| ------------|
  | video_note | videoNote | The video note description. |
  | is_viewed | bool | True, if at least one of the recipients has viewed the video note. |
  | is_secret | bool | True, if the video note thumbnail must be blurred and the video note must be shown only while tapped. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video_note.html).
  """

  defstruct "@type": "messageVideoNote", "@extra": nil, video_note: nil, is_viewed: nil, is_secret: nil
end
defmodule SessionTypeEdge do
  @moduledoc  """
  The session is running on the Edge browser.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_edge.html).
  """

  defstruct "@type": "sessionTypeEdge", "@extra": nil
end
defmodule InputPassportElementErrorSourceTranslationFiles do
  @moduledoc  """
  The translation of the document contains an error. The error is considered resolved when the list of files changes.

  | Name | Type | Description |
  |------|------| ------------|
  | file_hashes | bytes | Current hashes of all files with the translation. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_translation_files.html).
  """

  defstruct "@type": "inputPassportElementErrorSourceTranslationFiles", "@extra": nil, file_hashes: nil
end
defmodule InlineKeyboardButtonTypeBuy do
  @moduledoc  """
  A button to buy something. This button must be in the first column and row of the keyboard and can be attached only to a message with content of the type messageInvoice.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_buy.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeBuy", "@extra": nil
end
defmodule MessageCall do
  @moduledoc  """
  A message with information about an ended call.

  | Name | Type | Description |
  |------|------| ------------|
  | is_video | bool | True, if the call was a video call. |
  | discard_reason | CallDiscardReason | Reason why the call was discarded. |
  | duration | int32 | Call duration, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_call.html).
  """

  defstruct "@type": "messageCall", "@extra": nil, is_video: nil, discard_reason: nil, duration: nil
end
defmodule Chat do
  @moduledoc  """
  A chat. (Can be a private chat, basic group, supergroup, or secret chat.)

  | Name | Type | Description |
  |------|------| ------------|
  | id | int53 | Chat unique identifier. |
  | type | ChatType | Type of the chat. |
  | title | string | Chat title. |
  | photo | chatPhotoInfo | Chat photo; may be null. |
  | permissions | chatPermissions | Actions that non-administrator chat members are allowed to take in the chat. |
  | last_message | message | Last message in the chat; may be null. |
  | positions | chatPosition | Positions of the chat in chat lists. |
  | message_sender_id | MessageSender | Identifier of a user or chat that is selected to send messages in the chat; may be null if the user can't change message sender. |
  | has_protected_content | bool | True, if chat content can't be saved locally, forwarded, or copied. |
  | is_marked_as_unread | bool | True, if the chat is marked as unread. |
  | is_blocked | bool | True, if the chat is blocked by the current user and private messages from the chat can't be received. |
  | has_scheduled_messages | bool | True, if the chat has scheduled messages. |
  | can_be_deleted_only_for_self | bool | True, if the chat messages can be deleted only for the current user while other users will continue to see the messages. |
  | can_be_deleted_for_all_users | bool | True, if the chat messages can be deleted for all users. |
  | can_be_reported | bool | True, if the chat can be reported to Telegram moderators through <a class="el" href="classtd_1_1td__api_1_1report_chat.html">reportChat</a> or <a class="el" href="classtd_1_1td__api_1_1report_chat_photo.html">reportChatPhoto</a>. |
  | default_disable_notification | bool | Default value of the disable_notification parameter, used when a message is sent to the chat. |
  | unread_count | int32 | Number of unread messages in the chat. |
  | last_read_inbox_message_id | int53 | Identifier of the last read incoming message. |
  | last_read_outbox_message_id | int53 | Identifier of the last read outgoing message. |
  | unread_mention_count | int32 | Number of unread messages with a mention/reply in the chat. |
  | unread_reaction_count | int32 | Number of messages with unread reactions in the chat. |
  | notification_settings | chatNotificationSettings | Notification settings for the chat. |
  | available_reactions | string | List of reactions, available in the chat. |
  | message_ttl | int32 | Current message Time To Live setting (self-destruct timer) for the chat; 0 if not defined. TTL is counted from the time message or its content is viewed in secret chats and from the send date in other chats. |
  | theme_name | string | If non-empty, name of a theme, set for the chat. |
  | action_bar | ChatActionBar | Information about actions which must be possible to do through the chat action bar; may be null. |
  | video_chat | videoChat | Information about video chat of the chat. |
  | pending_join_requests | chatJoinRequestsInfo | Information about pending join requests; may be null. |
  | reply_markup_message_id | int53 | Identifier of the message from which reply markup needs to be used; 0 if there is no default custom reply markup in the chat. |
  | draft_message | draftMessage | A draft of a message in the chat; may be null. |
  | client_data | string | Application-specific data associated with the chat. (For example, the chat scroll position or local chat notification settings can be stored here.) Persistent if the message database is used. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat.html).
  """

  defstruct "@type": "chat", "@extra": nil, id: nil, type: nil, title: nil, photo: nil, permissions: nil, last_message: nil, positions: nil, message_sender_id: nil, has_protected_content: nil, is_marked_as_unread: nil, is_blocked: nil, has_scheduled_messages: nil, can_be_deleted_only_for_self: nil, can_be_deleted_for_all_users: nil, can_be_reported: nil, default_disable_notification: nil, unread_count: nil, last_read_inbox_message_id: nil, last_read_outbox_message_id: nil, unread_mention_count: nil, unread_reaction_count: nil, notification_settings: nil, available_reactions: nil, message_ttl: nil, theme_name: nil, action_bar: nil, video_chat: nil, pending_join_requests: nil, reply_markup_message_id: nil, draft_message: nil, client_data: nil
end
defmodule PassportElementErrorSourceDataField do
  @moduledoc  """
  One of the data fields contains an error. The error will be considered resolved when the value of the field changes.

  | Name | Type | Description |
  |------|------| ------------|
  | field_name | string | Field name. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_data_field.html).
  """

  defstruct "@type": "passportElementErrorSourceDataField", "@extra": nil, field_name: nil
end
defmodule TargetChatInternalLink do
  @moduledoc  """
  The chat needs to be open with the provided internal link.

  | Name | Type | Description |
  |------|------| ------------|
  | link | InternalLinkType | An internal link pointing to the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1target_chat_internal_link.html).
  """

  defstruct "@type": "targetChatInternalLink", "@extra": nil, link: nil
end
defmodule CallProblemSilentLocal do
  @moduledoc  """
  The user couldn't hear the other side.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_problem_silent_local.html).
  """

  defstruct "@type": "callProblemSilentLocal", "@extra": nil
end
defmodule InputMessagePhoto do
  @moduledoc  """
  A photo message.

  | Name | Type | Description |
  |------|------| ------------|
  | photo | InputFile | Photo to send. The photo must be at most 10 MB in size. The photo's width and height must not exceed 10000 in total. Width and height ratio must be at most 20. |
  | thumbnail | inputThumbnail | Photo thumbnail to be sent; pass null to skip thumbnail uploading. The thumbnail is sent to the other party only in secret chats. |
  | added_sticker_file_ids | int32 | File identifiers of the stickers added to the photo, if applicable. |
  | width | int32 | Photo width. |
  | height | int32 | Photo height. |
  | caption | formattedText | Photo caption; pass null to use an empty caption; 0-GetOption("message_caption_length_max") characters. |
  | ttl | int32 | Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_photo.html).
  """

  defstruct "@type": "inputMessagePhoto", "@extra": nil, photo: nil, thumbnail: nil, added_sticker_file_ids: nil, width: nil, height: nil, caption: nil, ttl: nil
end
defmodule AddedReaction do
  @moduledoc  """
  Represents a reaction applied to a message.

  | Name | Type | Description |
  |------|------| ------------|
  | reaction | string | Text representation of the reaction. |
  | sender_id | MessageSender | Identifier of the chat member, applied the reaction. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1added_reaction.html).
  """

  defstruct "@type": "addedReaction", "@extra": nil, reaction: nil, sender_id: nil
end
defmodule UpdateServiceNotification do
  @moduledoc  """
  A service notification from the server was received. Upon receiving this the application must show a popup with the content of the notification.

  | Name | Type | Description |
  |------|------| ------------|
  | type | string | Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "<a class="el" href="classtd_1_1_log.html">Log</a> out" must be shown under notification; if user presses the second, all local data must be destroyed using Destroy method. |
  | content | MessageContent | Notification content. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_service_notification.html).
  """

  defstruct "@type": "updateServiceNotification", "@extra": nil, type: nil, content: nil
end
defmodule TextEntityTypePreCode do
  @moduledoc  """
  Text that must be formatted as if inside pre, and code HTML tags.

  | Name | Type | Description |
  |------|------| ------------|
  | language | string | Programming language of the code; as defined by the sender. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_pre_code.html).
  """

  defstruct "@type": "textEntityTypePreCode", "@extra": nil, language: nil
end
defmodule NotificationGroupTypeMessages do
  @moduledoc  """
  A group containing notifications of type notificationTypeNewMessage and notificationTypeNewPushMessage with ordinary unread messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1notification_group_type_messages.html).
  """

  defstruct "@type": "notificationGroupTypeMessages", "@extra": nil
end
defmodule ChatEventDescriptionChanged do
  @moduledoc  """
  The chat description was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_description | string | Previous chat description. |
  | new_description | string | New chat description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_description_changed.html).
  """

  defstruct "@type": "chatEventDescriptionChanged", "@extra": nil, old_description: nil, new_description: nil
end
defmodule SearchMessagesFilterFailedToSend do
  @moduledoc  """
  Returns only failed to send messages. This filter can be used only if the message database is used.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_failed_to_send.html).
  """

  defstruct "@type": "searchMessagesFilterFailedToSend", "@extra": nil
end
defmodule FileTypeVideoNote do
  @moduledoc  """
  The file is a video note.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_video_note.html).
  """

  defstruct "@type": "fileTypeVideoNote", "@extra": nil
end
defmodule CanTransferOwnershipResultPasswordNeeded do
  @moduledoc  """
  The 2-step verification needs to be enabled first.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_transfer_ownership_result_password_needed.html).
  """

  defstruct "@type": "canTransferOwnershipResultPasswordNeeded", "@extra": nil
end
defmodule SuggestedActionConvertToBroadcastGroup do
  @moduledoc  """
  Suggests the user to convert specified supergroup to a broadcast group.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | int53 | Supergroup identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_convert_to_broadcast_group.html).
  """

  defstruct "@type": "suggestedActionConvertToBroadcastGroup", "@extra": nil, supergroup_id: nil
end
defmodule Stickers do
  @moduledoc  """
  Represents a list of stickers.

  | Name | Type | Description |
  |------|------| ------------|
  | stickers | sticker | List of stickers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1stickers.html).
  """

  defstruct "@type": "stickers", "@extra": nil, stickers: nil
end
defmodule ChatEventSlowModeDelayChanged do
  @moduledoc  """
  The slow_mode_delay setting of a supergroup was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_slow_mode_delay | int32 | Previous value of slow_mode_delay, in seconds. |
  | new_slow_mode_delay | int32 | New value of slow_mode_delay, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_slow_mode_delay_changed.html).
  """

  defstruct "@type": "chatEventSlowModeDelayChanged", "@extra": nil, old_slow_mode_delay: nil, new_slow_mode_delay: nil
end
defmodule RichTextBold do
  @moduledoc  """
  A bold rich text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_bold.html).
  """

  defstruct "@type": "richTextBold", "@extra": nil, text: nil
end
defmodule ConnectedWebsite do
  @moduledoc  """
  Contains information about one website the current user is logged in with Telegram.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Website identifier. |
  | domain_name | string | The domain name of the website. |
  | bot_user_id | int53 | User identifier of a bot linked with the website. |
  | browser | string | The version of a browser used to log in. |
  | platform | string | Operating system the browser is running on. |
  | log_in_date | int32 | Point in time (Unix timestamp) when the user was logged in. |
  | last_active_date | int32 | Point in time (Unix timestamp) when obtained authorization was last used. |
  | ip | string | IP address from which the user was logged in, in human-readable format. |
  | location | string | Human-readable description of a country and a region from which the user was logged in, based on the IP address. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1connected_website.html).
  """

  defstruct "@type": "connectedWebsite", "@extra": nil, id: nil, domain_name: nil, bot_user_id: nil, browser: nil, platform: nil, log_in_date: nil, last_active_date: nil, ip: nil, location: nil
end
defmodule UpdateFileGenerationStop do
  @moduledoc  """
  File generation is no longer needed.

  | Name | Type | Description |
  |------|------| ------------|
  | generation_id | int64 | Unique identifier for the generation process. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_file_generation_stop.html).
  """

  defstruct "@type": "updateFileGenerationStop", "@extra": nil, generation_id: nil
end
defmodule SearchMessagesFilter do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_search_messages_filter.html).
  """

  defstruct "@type": "SearchMessagesFilter", "@extra": nil
end
defmodule InternalLinkTypeChangePhoneNumber do
  @moduledoc  """
  The link is a link to the change phone number section of the app.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_change_phone_number.html).
  """

  defstruct "@type": "internalLinkTypeChangePhoneNumber", "@extra": nil
end
defmodule ChatSource do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_source.html).
  """

  defstruct "@type": "ChatSource", "@extra": nil
end
defmodule UpdateMessageSendFailed do
  @moduledoc  """
  A message failed to send. Be aware that some messages being sent can be irrecoverably deleted, in which case updateDeleteMessages will be received instead of this update.

  | Name | Type | Description |
  |------|------| ------------|
  | message | message | The failed to send message. |
  | old_message_id | int53 | The previous temporary message identifier. |
  | error_code | int32 | An error code. |
  | error_message | string | Error message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_send_failed.html).
  """

  defstruct "@type": "updateMessageSendFailed", "@extra": nil, message: nil, old_message_id: nil, error_code: nil, error_message: nil
end
defmodule ChatMembersFilter do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_chat_members_filter.html).
  """

  defstruct "@type": "ChatMembersFilter", "@extra": nil
end
defmodule PremiumLimitTypePinnedArchivedChatCount do
  @moduledoc  """
  The maximum number of pinned chats in the archive chat list.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_pinned_archived_chat_count.html).
  """

  defstruct "@type": "premiumLimitTypePinnedArchivedChatCount", "@extra": nil
end
defmodule StickerType do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_sticker_type.html).
  """

  defstruct "@type": "StickerType", "@extra": nil
end
defmodule MessageContact do
  @moduledoc  """
  A message with a user contact.

  | Name | Type | Description |
  |------|------| ------------|
  | contact | contact | The contact description. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_contact.html).
  """

  defstruct "@type": "messageContact", "@extra": nil, contact: nil
end
defmodule Thumbnail do
  @moduledoc  """
  Represents a thumbnail.

  | Name | Type | Description |
  |------|------| ------------|
  | format | ThumbnailFormat | Thumbnail format. |
  | width | int32 | Thumbnail width. |
  | height | int32 | Thumbnail height. |
  | file | file | The thumbnail. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail.html).
  """

  defstruct "@type": "thumbnail", "@extra": nil, format: nil, width: nil, height: nil, file: nil
end
defmodule PremiumFeatureImprovedDownloadSpeed do
  @moduledoc  """
  Improved download speed.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_improved_download_speed.html).
  """

  defstruct "@type": "premiumFeatureImprovedDownloadSpeed", "@extra": nil
end
defmodule UpdateChatAction do
  @moduledoc  """
  A message sender activity in the chat has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_thread_id | int53 | If not 0, a message thread identifier in which the action was performed. |
  | sender_id | MessageSender | Identifier of a message sender performing the action. |
  | action | ChatAction | The action. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_action.html).
  """

  defstruct "@type": "updateChatAction", "@extra": nil, chat_id: nil, message_thread_id: nil, sender_id: nil, action: nil
end
defmodule AuthenticationCodeTypeTelegramMessage do
  @moduledoc  """
  An authentication code is delivered via a private Telegram message, which can be viewed from another active session.

  | Name | Type | Description |
  |------|------| ------------|
  | length | int32 | Length of the code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authentication_code_type_telegram_message.html).
  """

  defstruct "@type": "authenticationCodeTypeTelegramMessage", "@extra": nil, length: nil
end
defmodule PassportAuthorizationForm do
  @moduledoc  """
  Contains information about a Telegram Passport authorization form that was requested.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Unique identifier of the authorization form. |
  | required_elements | passportRequiredElement | Telegram Passport elements that must be provided to complete the form. |
  | privacy_policy_url | string | URL for the privacy policy of the service; may be empty. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_authorization_form.html).
  """

  defstruct "@type": "passportAuthorizationForm", "@extra": nil, id: nil, required_elements: nil, privacy_policy_url: nil
end
defmodule MessageChatUpgradeTo do
  @moduledoc  """
  A basic group was upgraded to a supergroup and was deactivated as the result.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | int53 | Identifier of the supergroup to which the basic group was upgraded. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_upgrade_to.html).
  """

  defstruct "@type": "messageChatUpgradeTo", "@extra": nil, supergroup_id: nil
end
defmodule SearchMessagesFilterVideoNote do
  @moduledoc  """
  Returns only video note messages.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1search_messages_filter_video_note.html).
  """

  defstruct "@type": "searchMessagesFilterVideoNote", "@extra": nil
end
defmodule RichTextUrl do
  @moduledoc  """
  A rich text URL link.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |
  | url | string | URL. |
  | is_cached | bool | True, if the URL has cached instant view server-side. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_url.html).
  """

  defstruct "@type": "richTextUrl", "@extra": nil, text: nil, url: nil, is_cached: nil
end
defmodule Date do
  @moduledoc  """
  Represents a date according to the Gregorian calendar.

  | Name | Type | Description |
  |------|------| ------------|
  | day | int32 | Day of the month; 1-31. |
  | month | int32 | Month; 1-12. |
  | year | int32 | Year; 1-9999. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1date.html).
  """

  defstruct "@type": "date", "@extra": nil, day: nil, month: nil, year: nil
end
defmodule DiceStickers do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_dice_stickers.html).
  """

  defstruct "@type": "DiceStickers", "@extra": nil
end
defmodule AutoDownloadSettings do
  @moduledoc  """
  Contains auto-download settings.

  | Name | Type | Description |
  |------|------| ------------|
  | is_auto_download_enabled | bool | True, if the auto-download is enabled. |
  | max_photo_file_size | int32 | The maximum size of a photo file to be auto-downloaded, in bytes. |
  | max_video_file_size | int53 | The maximum size of a video file to be auto-downloaded, in bytes. |
  | max_other_file_size | int53 | The maximum size of other file types to be auto-downloaded, in bytes. |
  | video_upload_bitrate | int32 | The maximum suggested bitrate for uploaded videos, in kbit/s. |
  | preload_large_videos | bool | True, if the beginning of video files needs to be preloaded for instant playback. |
  | preload_next_audio | bool | True, if the next audio track needs to be preloaded while the user is listening to an audio file. |
  | use_less_data_for_calls | bool | True, if "use less data for calls" option needs to be enabled. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1auto_download_settings.html).
  """

  defstruct "@type": "autoDownloadSettings", "@extra": nil, is_auto_download_enabled: nil, max_photo_file_size: nil, max_video_file_size: nil, max_other_file_size: nil, video_upload_bitrate: nil, preload_large_videos: nil, preload_next_audio: nil, use_less_data_for_calls: nil
end
defmodule MessageChatJoinByLink do
  @moduledoc  """
  A new member joined the chat via an invite link.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_join_by_link.html).
  """

  defstruct "@type": "messageChatJoinByLink", "@extra": nil
end
defmodule ChatEventMemberLeft do
  @moduledoc  """
  A member left the chat.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_member_left.html).
  """

  defstruct "@type": "chatEventMemberLeft", "@extra": nil
end
defmodule CanTransferOwnershipResultPasswordTooFresh do
  @moduledoc  """
  The 2-step verification was enabled recently, user needs to wait.

  | Name | Type | Description |
  |------|------| ------------|
  | retry_after | int32 | Time left before the session can be used to transfer ownership of a chat, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1can_transfer_ownership_result_password_too_fresh.html).
  """

  defstruct "@type": "canTransferOwnershipResultPasswordTooFresh", "@extra": nil, retry_after: nil
end
defmodule FileTypeAudio do
  @moduledoc  """
  The file is an audio file.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_type_audio.html).
  """

  defstruct "@type": "fileTypeAudio", "@extra": nil
end
defmodule FoundFileDownloads do
  @moduledoc  """
  Contains a list of downloaded files, found by a search.

  | Name | Type | Description |
  |------|------| ------------|
  | total_counts | downloadedFileCounts | Total number of suitable files, ignoring offset. |
  | files | fileDownload | The list of files. |
  | next_offset | string | The offset for the next request. If empty, there are no more results. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1found_file_downloads.html).
  """

  defstruct "@type": "foundFileDownloads", "@extra": nil, total_counts: nil, files: nil, next_offset: nil
end
defmodule MessageUnsupported do
  @moduledoc  """
  Message content that is not supported in the current TDLib version.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_unsupported.html).
  """

  defstruct "@type": "messageUnsupported", "@extra": nil
end
defmodule PassportElementErrorSourceUnspecified do
  @moduledoc  """
  The element contains an error in an unspecified place. The error will be considered resolved when new data is added.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_unspecified.html).
  """

  defstruct "@type": "passportElementErrorSourceUnspecified", "@extra": nil
end
defmodule BotCommandScopeChatMember do
  @moduledoc  """
  A scope covering a member of a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | user_id | int53 | User identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_chat_member.html).
  """

  defstruct "@type": "botCommandScopeChatMember", "@extra": nil, chat_id: nil, user_id: nil
end
defmodule Poll do
  @moduledoc  """
  Describes a poll.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Unique poll identifier. |
  | question | string | Poll question; 1-300 characters. |
  | options | pollOption | List of poll answer options. |
  | total_voter_count | int32 | Total number of voters, participating in the poll. |
  | recent_voter_user_ids | int53 | User identifiers of recent voters, if the poll is non-anonymous. |
  | is_anonymous | bool | True, if the poll is anonymous. |
  | type | PollType | Type of the poll. |
  | open_period | int32 | Amount of time the poll will be active after creation, in seconds. |
  | close_date | int32 | Point in time (Unix timestamp) when the poll will automatically be closed. |
  | is_closed | bool | True, if the poll is closed. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1poll.html).
  """

  defstruct "@type": "poll", "@extra": nil, id: nil, question: nil, options: nil, total_voter_count: nil, recent_voter_user_ids: nil, is_anonymous: nil, type: nil, open_period: nil, close_date: nil, is_closed: nil
end
defmodule PassportElementTypePersonalDetails do
  @moduledoc  """
  A Telegram Passport element containing the user's personal details.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_personal_details.html).
  """

  defstruct "@type": "passportElementTypePersonalDetails", "@extra": nil
end
defmodule InputPassportElementDriverLicense do
  @moduledoc  """
  A Telegram Passport element to be saved containing the user's driver license.

  | Name | Type | Description |
  |------|------| ------------|
  | driver_license | inputIdentityDocument | The driver license to be saved. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_driver_license.html).
  """

  defstruct "@type": "inputPassportElementDriverLicense", "@extra": nil, driver_license: nil
end
defmodule InputCredentialsGooglePay do
  @moduledoc  """
  Applies if a user enters new credentials using Google Pay.

  | Name | Type | Description |
  |------|------| ------------|
  | data | string | JSON-encoded data with the credential identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_google_pay.html).
  """

  defstruct "@type": "inputCredentialsGooglePay", "@extra": nil, data: nil
end
defmodule PageBlockRelatedArticle do
  @moduledoc  """
  Contains information about a related article.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | Related article URL. |
  | title | string | Article title; may be empty. |
  | description | string | Article description; may be empty. |
  | photo | photo | Article photo; may be null. |
  | author | string | Article author; may be empty. |
  | publish_date | int32 | Point in time (Unix timestamp) when the article was published; 0 if unknown. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_related_article.html).
  """

  defstruct "@type": "pageBlockRelatedArticle", "@extra": nil, url: nil, title: nil, description: nil, photo: nil, author: nil, publish_date: nil
end
defmodule SessionTypeUnknown do
  @moduledoc  """
  The session is running on an unknown type of device.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_unknown.html).
  """

  defstruct "@type": "sessionTypeUnknown", "@extra": nil
end
defmodule PageBlockBlockQuote do
  @moduledoc  """
  A block quote.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Quote text. |
  | credit | RichText | Quote credit. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_block_quote.html).
  """

  defstruct "@type": "pageBlockBlockQuote", "@extra": nil, text: nil, credit: nil
end
defmodule SuggestedActionEnableArchiveAndMuteNewChats do
  @moduledoc  """
  Suggests the user to enable "archive_and_mute_new_chats_from_unknown_users" option.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1suggested_action_enable_archive_and_mute_new_chats.html).
  """

  defstruct "@type": "suggestedActionEnableArchiveAndMuteNewChats", "@extra": nil
end
defmodule HttpUrl do
  @moduledoc  """
  Contains an HTTP URL.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | The URL. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1http_url.html).
  """

  defstruct "@type": "httpUrl", "@extra": nil, url: nil
end
defmodule BotCommandScopeChatAdministrators do
  @moduledoc  """
  A scope covering all administrators of a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1bot_command_scope_chat_administrators.html).
  """

  defstruct "@type": "botCommandScopeChatAdministrators", "@extra": nil, chat_id: nil
end
defmodule InlineKeyboardButtonTypeUrl do
  @moduledoc  """
  A button that opens a specified URL.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | HTTP or tg:// URL to open. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_url.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeUrl", "@extra": nil, url: nil
end
defmodule Update do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_update.html).
  """

  defstruct "@type": "Update", "@extra": nil
end
defmodule CheckStickerSetNameResultOk do
  @moduledoc  """
  The name can be set.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_sticker_set_name_result_ok.html).
  """

  defstruct "@type": "checkStickerSetNameResultOk", "@extra": nil
end
defmodule PassportElementErrorSourceFrontSide do
  @moduledoc  """
  The front side of the document contains an error. The error will be considered resolved when the file with the front side changes.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error_source_front_side.html).
  """

  defstruct "@type": "passportElementErrorSourceFrontSide", "@extra": nil
end
defmodule CallProtocol do
  @moduledoc  """
  Specifies the supported call protocols.

  | Name | Type | Description |
  |------|------| ------------|
  | udp_p2p | bool | True, if UDP peer-to-peer connections are supported. |
  | udp_reflector | bool | True, if connection through UDP reflectors is supported. |
  | min_layer | int32 | The minimum supported API layer; use 65. |
  | max_layer | int32 | The maximum supported API layer; use 65. |
  | library_versions | string | List of supported tgcalls versions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call_protocol.html).
  """

  defstruct "@type": "callProtocol", "@extra": nil, udp_p2p: nil, udp_reflector: nil, min_layer: nil, max_layer: nil, library_versions: nil
end
defmodule ChatEventInviteLinkRevoked do
  @moduledoc  """
  A chat invite link was revoked.

  | Name | Type | Description |
  |------|------| ------------|
  | invite_link | chatInviteLink | The invite link. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_invite_link_revoked.html).
  """

  defstruct "@type": "chatEventInviteLinkRevoked", "@extra": nil, invite_link: nil
end
defmodule EncryptedCredentials do
  @moduledoc  """
  Contains encrypted Telegram Passport data credentials.

  | Name | Type | Description |
  |------|------| ------------|
  | data | bytes | The encrypted credentials. |
  | hash | bytes | The decrypted data hash. |
  | secret | bytes | Secret for data decryption, encrypted with the service's public key. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1encrypted_credentials.html).
  """

  defstruct "@type": "encryptedCredentials", "@extra": nil, data: nil, hash: nil, secret: nil
end
defmodule PremiumLimitTypeChatFilterCount do
  @moduledoc  """
  The maximum number of chat filters.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_limit_type_chat_filter_count.html).
  """

  defstruct "@type": "premiumLimitTypeChatFilterCount", "@extra": nil
end
defmodule ChatActionUploadingDocument do
  @moduledoc  """
  The user is uploading a document.

  | Name | Type | Description |
  |------|------| ------------|
  | progress | int32 | Upload progress, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_uploading_document.html).
  """

  defstruct "@type": "chatActionUploadingDocument", "@extra": nil, progress: nil
end
defmodule PageBlockPreformatted do
  @moduledoc  """
  A preformatted text paragraph.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Paragraph text. |
  | language | string | Programming language for which the text needs to be formatted. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_preformatted.html).
  """

  defstruct "@type": "pageBlockPreformatted", "@extra": nil, text: nil, language: nil
end
defmodule RichTextPlain do
  @moduledoc  """
  A plain text.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_plain.html).
  """

  defstruct "@type": "richTextPlain", "@extra": nil, text: nil
end
defmodule AuthorizationStateLoggingOut do
  @moduledoc  """
  The user is currently logging out.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_logging_out.html).
  """

  defstruct "@type": "authorizationStateLoggingOut", "@extra": nil
end
defmodule SessionTypeFirefox do
  @moduledoc  """
  The session is running on the Firefox browser.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_firefox.html).
  """

  defstruct "@type": "sessionTypeFirefox", "@extra": nil
end
defmodule UserStatusOffline do
  @moduledoc  """
  The user is offline.

  | Name | Type | Description |
  |------|------| ------------|
  | was_online | int32 | Point in time (Unix timestamp) when the user was last online. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_status_offline.html).
  """

  defstruct "@type": "userStatusOffline", "@extra": nil, was_online: nil
end
defmodule StatisticalValue do
  @moduledoc  """
  A value with information about its recent changes.

  | Name | Type | Description |
  |------|------| ------------|
  | value | double | The current value. |
  | previous_value | double | The value for the previous day. |
  | growth_rate_percentage | double | The growth rate of the value, as a percentage. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1statistical_value.html).
  """

  defstruct "@type": "statisticalValue", "@extra": nil, value: nil, previous_value: nil, growth_rate_percentage: nil
end
defmodule UpdateMessageMentionRead do
  @moduledoc  """
  A message with an unread mention was read.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_id | int53 | Message identifier. |
  | unread_mention_count | int32 | The new number of unread mention messages left in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_mention_read.html).
  """

  defstruct "@type": "updateMessageMentionRead", "@extra": nil, chat_id: nil, message_id: nil, unread_mention_count: nil
end
defmodule MessageSticker do
  @moduledoc  """
  A sticker message.

  | Name | Type | Description |
  |------|------| ------------|
  | sticker | sticker | The sticker description. |
  | is_premium | bool | True, if premium animation of the sticker must be played. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sticker.html).
  """

  defstruct "@type": "messageSticker", "@extra": nil, sticker: nil, is_premium: nil
end
defmodule Chats do
  @moduledoc  """
  Represents a list of chats.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of chats found. |
  | chat_ids | int53 | List of chat identifiers. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chats.html).
  """

  defstruct "@type": "chats", "@extra": nil, total_count: nil, chat_ids: nil
end
defmodule MessageReplyInfo do
  @moduledoc  """
  Contains information about replies to a message.

  | Name | Type | Description |
  |------|------| ------------|
  | reply_count | int32 | Number of times the message was directly or indirectly replied. |
  | recent_replier_ids | MessageSender | Identifiers of at most 3 recent repliers to the message; available in channels with a discussion supergroup. The users and chats are expected to be inaccessible: only their photo and name will be available. |
  | last_read_inbox_message_id | int53 | Identifier of the last read incoming reply to the message. |
  | last_read_outbox_message_id | int53 | Identifier of the last read outgoing reply to the message. |
  | last_message_id | int53 | Identifier of the last reply to the message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_reply_info.html).
  """

  defstruct "@type": "messageReplyInfo", "@extra": nil, reply_count: nil, recent_replier_ids: nil, last_read_inbox_message_id: nil, last_read_outbox_message_id: nil, last_message_id: nil
end
defmodule GroupCallVideoQualityThumbnail do
  @moduledoc  """
  The worst available video quality.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_video_quality_thumbnail.html).
  """

  defstruct "@type": "groupCallVideoQualityThumbnail", "@extra": nil
end
defmodule StorageStatisticsByChat do
  @moduledoc  """
  Contains the storage usage statistics for a specific chat.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier; 0 if none. |
  | size | int53 | Total size of the files in the chat, in bytes. |
  | count | int32 | Total number of files in the chat. |
  | by_file_type | storageStatisticsByFileType | Statistics split by file types. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1storage_statistics_by_chat.html).
  """

  defstruct "@type": "storageStatisticsByChat", "@extra": nil, chat_id: nil, size: nil, count: nil, by_file_type: nil
end
defmodule GroupCallParticipantVideoInfo do
  @moduledoc  """
  Contains information about a group call participant's video channel.

  | Name | Type | Description |
  |------|------| ------------|
  | source_groups | groupCallVideoSourceGroup | List of synchronization source groups of the video. |
  | endpoint_id | string | Video channel endpoint identifier. |
  | is_paused | bool | True if the video is paused. This flag needs to be ignored, if new video frames are received. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_participant_video_info.html).
  """

  defstruct "@type": "groupCallParticipantVideoInfo", "@extra": nil, source_groups: nil, endpoint_id: nil, is_paused: nil
end
defmodule AuthorizationState do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_authorization_state.html).
  """

  defstruct "@type": "AuthorizationState", "@extra": nil
end
defmodule CheckStickerSetNameResultNameInvalid do
  @moduledoc  """
  The name is invalid.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1check_sticker_set_name_result_name_invalid.html).
  """

  defstruct "@type": "checkStickerSetNameResultNameInvalid", "@extra": nil
end
defmodule InternalLinkTypeMessageDraft do
  @moduledoc  """
  The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field.

  | Name | Type | Description |
  |------|------| ------------|
  | text | formattedText | Message draft text. |
  | contains_link | bool | True, if the first line of the text contains a link. If true, the input field needs to be focused and the text after the link must be selected. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_message_draft.html).
  """

  defstruct "@type": "internalLinkTypeMessageDraft", "@extra": nil, text: nil, contains_link: nil
end
defmodule MessageVideo do
  @moduledoc  """
  A video message.

  | Name | Type | Description |
  |------|------| ------------|
  | video | video | The video description. |
  | caption | formattedText | Video caption. |
  | is_secret | bool | True, if the video thumbnail must be blurred and the video must be shown only while tapped. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video.html).
  """

  defstruct "@type": "messageVideo", "@extra": nil, video: nil, caption: nil, is_secret: nil
end
defmodule ChatEventMessageEdited do
  @moduledoc  """
  A message was edited.

  | Name | Type | Description |
  |------|------| ------------|
  | old_message | message | The original message before the edit. |
  | new_message | message | The message after it was edited. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_message_edited.html).
  """

  defstruct "@type": "chatEventMessageEdited", "@extra": nil, old_message: nil, new_message: nil
end
defmodule PageBlockParagraph do
  @moduledoc  """
  A text paragraph.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Paragraph text. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_paragraph.html).
  """

  defstruct "@type": "pageBlockParagraph", "@extra": nil, text: nil
end
defmodule InputPassportElementErrorSourceTranslationFile do
  @moduledoc  """
  One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes.

  | Name | Type | Description |
  |------|------| ------------|
  | file_hash | bytes | Current hash of the file containing the translation. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_passport_element_error_source_translation_file.html).
  """

  defstruct "@type": "inputPassportElementErrorSourceTranslationFile", "@extra": nil, file_hash: nil
end
defmodule UpdateMessageEdited do
  @moduledoc  """
  A message was edited. Changes in the message content will come in a separate updateMessageContent.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | message_id | int53 | Message identifier. |
  | edit_date | int32 | Point in time (Unix timestamp) when the message was edited. |
  | reply_markup | ReplyMarkup | New message reply markup; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_message_edited.html).
  """

  defstruct "@type": "updateMessageEdited", "@extra": nil, chat_id: nil, message_id: nil, edit_date: nil, reply_markup: nil
end
defmodule LanguagePackStringValueOrdinary do
  @moduledoc  """
  An ordinary language pack string.

  | Name | Type | Description |
  |------|------| ------------|
  | value | string | String value. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1language_pack_string_value_ordinary.html).
  """

  defstruct "@type": "languagePackStringValueOrdinary", "@extra": nil, value: nil
end
defmodule UserPrivacySettingRules do
  @moduledoc  """
  A list of privacy rules. Rules are matched in the specified order. The first matched rule defines the privacy setting for a given user. If no rule matches, the action is not allowed.

  | Name | Type | Description |
  |------|------| ------------|
  | rules | UserPrivacySettingRule | A list of rules. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rules.html).
  """

  defstruct "@type": "userPrivacySettingRules", "@extra": nil, rules: nil
end
defmodule ThumbnailFormatGif do
  @moduledoc  """
  The thumbnail is in static GIF format. It will be used only for some bot inline results.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1thumbnail_format_gif.html).
  """

  defstruct "@type": "thumbnailFormatGif", "@extra": nil
end
defmodule KeyboardButton do
  @moduledoc  """
  Represents a single button in a bot keyboard.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Text of the button. |
  | type | KeyboardButtonType | Type of the button. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button.html).
  """

  defstruct "@type": "keyboardButton", "@extra": nil, text: nil, type: nil
end
defmodule GroupCallVideoQualityMedium do
  @moduledoc  """
  The medium video quality.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_video_quality_medium.html).
  """

  defstruct "@type": "groupCallVideoQualityMedium", "@extra": nil
end
defmodule UpdateNotification do
  @moduledoc  """
  A notification was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | notification_group_id | int32 | Unique notification group identifier. |
  | notification | notification | Changed notification. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_notification.html).
  """

  defstruct "@type": "updateNotification", "@extra": nil, notification_group_id: nil, notification: nil
end
defmodule UpdateBasicGroupFullInfo do
  @moduledoc  """
  Some data in basicGroupFullInfo has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | basic_group_id | int53 | Identifier of a basic group. |
  | basic_group_full_info | basicGroupFullInfo | New full information about the group. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_basic_group_full_info.html).
  """

  defstruct "@type": "updateBasicGroupFullInfo", "@extra": nil, basic_group_id: nil, basic_group_full_info: nil
end
defmodule UserPrivacySettingShowPhoneNumber do
  @moduledoc  """
  A privacy setting for managing whether the user's phone number is visible.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_show_phone_number.html).
  """

  defstruct "@type": "userPrivacySettingShowPhoneNumber", "@extra": nil
end
defmodule PageBlockRelatedArticles do
  @moduledoc  """
  Related articles.

  | Name | Type | Description |
  |------|------| ------------|
  | header | RichText | Block header. |
  | articles | pageBlockRelatedArticle | List of related articles. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_related_articles.html).
  """

  defstruct "@type": "pageBlockRelatedArticles", "@extra": nil, header: nil, articles: nil
end
defmodule ReplyMarkup do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_reply_markup.html).
  """

  defstruct "@type": "ReplyMarkup", "@extra": nil
end
defmodule ChatEventLocationChanged do
  @moduledoc  """
  The supergroup location was changed.

  | Name | Type | Description |
  |------|------| ------------|
  | old_location | chatLocation | Previous location; may be null. |
  | new_location | chatLocation | New location; may be null. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_event_location_changed.html).
  """

  defstruct "@type": "chatEventLocationChanged", "@extra": nil, old_location: nil, new_location: nil
end
defmodule AnimatedChatPhoto do
  @moduledoc  """
  Animated variant of a chat photo in MPEG4 format.

  | Name | Type | Description |
  |------|------| ------------|
  | length | int32 | Animation width and height. |
  | file | file | Information about the animation file. |
  | main_frame_timestamp | double | Timestamp of the frame, used as a static chat photo. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1animated_chat_photo.html).
  """

  defstruct "@type": "animatedChatPhoto", "@extra": nil, length: nil, file: nil, main_frame_timestamp: nil
end
defmodule RichTextPhoneNumber do
  @moduledoc  """
  A rich text phone number.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Text. |
  | phone_number | string | Phone number. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rich_text_phone_number.html).
  """

  defstruct "@type": "richTextPhoneNumber", "@extra": nil, text: nil, phone_number: nil
end
defmodule GroupCallRecentSpeaker do
  @moduledoc  """
  Describes a recently speaking participant in a group call.

  | Name | Type | Description |
  |------|------| ------------|
  | participant_id | MessageSender | Group call participant identifier. |
  | is_speaking | bool | True, is the user has spoken recently. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_recent_speaker.html).
  """

  defstruct "@type": "groupCallRecentSpeaker", "@extra": nil, participant_id: nil, is_speaking: nil
end
defmodule JsonObjectMember do
  @moduledoc  """
  Represents one member of a JSON object.

  | Name | Type | Description |
  |------|------| ------------|
  | key | string | Member's key. |
  | value | JsonValue | Member's value. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_object_member.html).
  """

  defstruct "@type": "jsonObjectMember", "@extra": nil, key: nil, value: nil
end
defmodule DeepLinkInfo do
  @moduledoc  """
  Contains information about a tg: deep link.

  | Name | Type | Description |
  |------|------| ------------|
  | text | formattedText | Text to be shown to the user. |
  | need_update_application | bool | True, if the user must be asked to update the application. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deep_link_info.html).
  """

  defstruct "@type": "deepLinkInfo", "@extra": nil, text: nil, need_update_application: nil
end
defmodule NetworkTypeNone do
  @moduledoc  """
  The network is not available.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_none.html).
  """

  defstruct "@type": "networkTypeNone", "@extra": nil
end
defmodule BackgroundTypeFill do
  @moduledoc  """
  A filled background.

  | Name | Type | Description |
  |------|------| ------------|
  | fill | BackgroundFill | The background fill. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1background_type_fill.html).
  """

  defstruct "@type": "backgroundTypeFill", "@extra": nil, fill: nil
end
defmodule PassportElementTypeBankStatement do
  @moduledoc  """
  A Telegram Passport element containing the user's bank statement.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_bank_statement.html).
  """

  defstruct "@type": "passportElementTypeBankStatement", "@extra": nil
end
defmodule LanguagePackStringValue do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_language_pack_string_value.html).
  """

  defstruct "@type": "LanguagePackStringValue", "@extra": nil
end
defmodule TMeUrl do
  @moduledoc  """
  Represents a URL linking to an internal Telegram entity.

  | Name | Type | Description |
  |------|------| ------------|
  | url | string | URL. |
  | type | TMeUrlType | Type of the URL. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1t_me_url.html).
  """

  defstruct "@type": "tMeUrl", "@extra": nil, url: nil, type: nil
end
defmodule SupergroupMembersFilterBanned do
  @moduledoc  """
  Returns users banned from the supergroup or channel; can be used only by administrators.

  | Name | Type | Description |
  |------|------| ------------|
  | query | string | Query to search for. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup_members_filter_banned.html).
  """

  defstruct "@type": "supergroupMembersFilterBanned", "@extra": nil, query: nil
end
defmodule Proxy do
  @moduledoc  """
  Contains information about a proxy server.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Unique identifier of the proxy. |
  | server | string | Proxy server IP address. |
  | port | int32 | Proxy server port. |
  | last_used_date | int32 | Point in time (Unix timestamp) when the proxy was last used; 0 if never. |
  | is_enabled | bool | True, if the proxy is enabled now. |
  | type | ProxyType | Type of the proxy. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1proxy.html).
  """

  defstruct "@type": "proxy", "@extra": nil, id: nil, server: nil, port: nil, last_used_date: nil, is_enabled: nil, type: nil
end
defmodule UserPrivacySettingRuleAllowAll do
  @moduledoc  """
  A rule to allow all users to do something.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_allow_all.html).
  """

  defstruct "@type": "userPrivacySettingRuleAllowAll", "@extra": nil
end
defmodule InputCredentialsApplePay do
  @moduledoc  """
  Applies if a user enters new credentials using Apple Pay.

  | Name | Type | Description |
  |------|------| ------------|
  | data | string | JSON-encoded data with the credential identifier. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_credentials_apple_pay.html).
  """

  defstruct "@type": "inputCredentialsApplePay", "@extra": nil, data: nil
end
defmodule ChatActionRecordingVoiceNote do
  @moduledoc  """
  The user is recording a voice note.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_recording_voice_note.html).
  """

  defstruct "@type": "chatActionRecordingVoiceNote", "@extra": nil
end
defmodule InputChatPhoto do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_input_chat_photo.html).
  """

  defstruct "@type": "InputChatPhoto", "@extra": nil
end
defmodule StatisticalGraphData do
  @moduledoc  """
  A graph data.

  | Name | Type | Description |
  |------|------| ------------|
  | json_data | string | Graph data in JSON format. |
  | zoom_token | string | If non-empty, a token which can be used to receive a zoomed in graph. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1statistical_graph_data.html).
  """

  defstruct "@type": "statisticalGraphData", "@extra": nil, json_data: nil, zoom_token: nil
end
defmodule MessageVideoChatEnded do
  @moduledoc  """
  A message with information about an ended video chat.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | int32 | Call duration, in seconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_video_chat_ended.html).
  """

  defstruct "@type": "messageVideoChatEnded", "@extra": nil, duration: nil
end
defmodule PremiumFeatureUniqueReactions do
  @moduledoc  """
  Allowed to use more reactions.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_unique_reactions.html).
  """

  defstruct "@type": "premiumFeatureUniqueReactions", "@extra": nil
end
defmodule SessionTypeOpera do
  @moduledoc  """
  The session is running on the Opera browser.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_opera.html).
  """

  defstruct "@type": "sessionTypeOpera", "@extra": nil
end
defmodule KeyboardButtonTypeRequestPoll do
  @moduledoc  """
  A button that allows the user to create and send a poll when pressed; available only in private chats.

  | Name | Type | Description |
  |------|------| ------------|
  | force_regular | bool | If true, only regular polls must be allowed to create. |
  | force_quiz | bool | If true, only polls in quiz mode must be allowed to create. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1keyboard_button_type_request_poll.html).
  """

  defstruct "@type": "keyboardButtonTypeRequestPoll", "@extra": nil, force_regular: nil, force_quiz: nil
end
defmodule UpdateUserPrivacySettingRules do
  @moduledoc  """
  Some privacy setting rules have been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | setting | UserPrivacySetting | The privacy setting. |
  | rules | userPrivacySettingRules | New privacy rules. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_user_privacy_setting_rules.html).
  """

  defstruct "@type": "updateUserPrivacySettingRules", "@extra": nil, setting: nil, rules: nil
end
defmodule MessageWebsiteConnected do
  @moduledoc  """
  The current user has connected a website by logging in using Telegram Login Widget on it.

  | Name | Type | Description |
  |------|------| ------------|
  | domain_name | string | Domain name of the connected website. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_website_connected.html).
  """

  defstruct "@type": "messageWebsiteConnected", "@extra": nil, domain_name: nil
end
defmodule NetworkTypeMobile do
  @moduledoc  """
  A mobile network.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1network_type_mobile.html).
  """

  defstruct "@type": "networkTypeMobile", "@extra": nil
end
defmodule ChatMembersFilterMention do
  @moduledoc  """
  Returns users which can be mentioned in the chat.

  | Name | Type | Description |
  |------|------| ------------|
  | message_thread_id | int53 | If non-zero, the identifier of the current message thread. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_members_filter_mention.html).
  """

  defstruct "@type": "chatMembersFilterMention", "@extra": nil, message_thread_id: nil
end
defmodule UpdatePoll do
  @moduledoc  """
  A poll was updated; for bots only.

  | Name | Type | Description |
  |------|------| ------------|
  | poll | poll | New data about the poll. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_poll.html).
  """

  defstruct "@type": "updatePoll", "@extra": nil, poll: nil
end
defmodule TextEntityTypeHashtag do
  @moduledoc  """
  A hashtag text, beginning with "#".


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_entity_type_hashtag.html).
  """

  defstruct "@type": "textEntityTypeHashtag", "@extra": nil
end
defmodule PremiumFeatureDisabledAds do
  @moduledoc  """
  Disabled ads.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_disabled_ads.html).
  """

  defstruct "@type": "premiumFeatureDisabledAds", "@extra": nil
end
defmodule UpdateSupergroupFullInfo do
  @moduledoc  """
  Some data in supergroupFullInfo has been changed.

  | Name | Type | Description |
  |------|------| ------------|
  | supergroup_id | int53 | Identifier of the supergroup or channel. |
  | supergroup_full_info | supergroupFullInfo | New full information about the supergroup. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_supergroup_full_info.html).
  """

  defstruct "@type": "updateSupergroupFullInfo", "@extra": nil, supergroup_id: nil, supergroup_full_info: nil
end
defmodule MessageStatistics do
  @moduledoc  """
  A detailed statistics about a message.

  | Name | Type | Description |
  |------|------| ------------|
  | message_interaction_graph | StatisticalGraph | A graph containing number of message views and shares. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_statistics.html).
  """

  defstruct "@type": "messageStatistics", "@extra": nil, message_interaction_graph: nil
end
defmodule InternalLinkTypeAuthenticationCode do
  @moduledoc  """
  The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode.

  | Name | Type | Description |
  |------|------| ------------|
  | code | string | The authentication code. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_authentication_code.html).
  """

  defstruct "@type": "internalLinkTypeAuthenticationCode", "@extra": nil, code: nil
end
defmodule MaskPosition do
  @moduledoc  """
  Position on a photo where a mask is placed.

  | Name | Type | Description |
  |------|------| ------------|
  | point | MaskPoint | Part of the face, relative to which the mask is placed. |
  | x_shift | double | Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. (For example, -1.0 will place the mask just to the left of the default mask position.) |
  | y_shift | double | Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. (For example, 1.0 will place the mask just below the default mask position.) |
  | scale | double | Mask scaling coefficient. (For example, 2.0 means a doubled size.) |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1mask_position.html).
  """

  defstruct "@type": "maskPosition", "@extra": nil, point: nil, x_shift: nil, y_shift: nil, scale: nil
end
defmodule StickerSets do
  @moduledoc  """
  Represents a list of sticker sets.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Approximate total number of sticker sets found. |
  | sets | stickerSetInfo | List of sticker sets. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sticker_sets.html).
  """

  defstruct "@type": "stickerSets", "@extra": nil, total_count: nil, sets: nil
end
defmodule CanTransferOwnershipResult do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_can_transfer_ownership_result.html).
  """

  defstruct "@type": "CanTransferOwnershipResult", "@extra": nil
end
defmodule Supergroup do
  @moduledoc  """
  Represents a supergroup or channel with zero or more members (subscribers in the case of channels). From the point of view of the system, a channel is a special kind of a supergroup: only administrators can post and see the list of members, and posts from all administrators use the name and photo of the channel instead of individual names and profile photos. Unlike supergroups, channels can have an unlimited number of subscribers.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int53 | Supergroup or channel identifier. |
  | username | string | Username of the supergroup or channel; empty for private supergroups or channels. |
  | date | int32 | Point in time (Unix timestamp) when the current user joined, or the point in time when the supergroup or channel was created, in case the user is not a member. |
  | status | ChatMemberStatus | Status of the current user in the supergroup or channel; custom title will be always empty. |
  | member_count | int32 | Number of members in the supergroup or channel; 0 if unknown. Currently, it is guaranteed to be known only if the supergroup or channel was received through <a class="el" href="classtd_1_1td__api_1_1search_public_chats.html">searchPublicChats</a>, <a class="el" href="classtd_1_1td__api_1_1search_chats_nearby.html">searchChatsNearby</a>, <a class="el" href="classtd_1_1td__api_1_1get_inactive_supergroup_chats.html">getInactiveSupergroupChats</a>, <a class="el" href="classtd_1_1td__api_1_1get_suitable_discussion_chats.html">getSuitableDiscussionChats</a>, <a class="el" href="classtd_1_1td__api_1_1get_groups_in_common.html">getGroupsInCommon</a>, or <a class="el" href="classtd_1_1td__api_1_1get_user_privacy_setting_rules.html">getUserPrivacySettingRules</a>. |
  | has_linked_chat | bool | True, if the channel has a discussion group, or the supergroup is the designated discussion group for a channel. |
  | has_location | bool | True, if the supergroup is connected to a location, i.e. the supergroup is a location-based supergroup. |
  | sign_messages | bool | True, if messages sent to the channel need to contain information about the sender. This field is only applicable to channels. |
  | join_to_send_messages | bool | True, if users need to join the supergroup before they can send messages. Always true for channels and non-discussion supergroups. |
  | join_by_request | bool | True, if all users directly joining the supergroup need to be approved by supergroup administrators. Always false for channels and supergroups without username, location, or a linked chat. |
  | is_slow_mode_enabled | bool | True, if the slow mode is enabled in the supergroup. |
  | is_channel | bool | True, if the supergroup is a channel. |
  | is_broadcast_group | bool | True, if the supergroup is a broadcast group, i.e. only administrators can send messages and there is no limit on the number of members. |
  | is_verified | bool | True, if the supergroup or channel is verified. |
  | restriction_reason | string | If non-empty, contains a human-readable description of the reason why access to this supergroup or channel must be restricted. |
  | is_scam | bool | True, if many users reported this supergroup or channel as a scam. |
  | is_fake | bool | True, if many users reported this supergroup or channel as a fake account. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1supergroup.html).
  """

  defstruct "@type": "supergroup", "@extra": nil, id: nil, username: nil, date: nil, status: nil, member_count: nil, has_linked_chat: nil, has_location: nil, sign_messages: nil, join_to_send_messages: nil, join_by_request: nil, is_slow_mode_enabled: nil, is_channel: nil, is_broadcast_group: nil, is_verified: nil, restriction_reason: nil, is_scam: nil, is_fake: nil
end
defmodule NetworkStatisticsEntry do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_network_statistics_entry.html).
  """

  defstruct "@type": "NetworkStatisticsEntry", "@extra": nil
end
defmodule PassportElement do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_passport_element.html).
  """

  defstruct "@type": "PassportElement", "@extra": nil
end
defmodule AuthorizationStateClosed do
  @moduledoc  """
  TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to with error code 500. To continue working, one must create a new instance of the TDLib client.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1authorization_state_closed.html).
  """

  defstruct "@type": "authorizationStateClosed", "@extra": nil
end
defmodule PremiumFeatureIncreasedUploadFileSize do
  @moduledoc  """
  Increased maximum upload file size.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1premium_feature_increased_upload_file_size.html).
  """

  defstruct "@type": "premiumFeatureIncreasedUploadFileSize", "@extra": nil
end
defmodule Audio do
  @moduledoc  """
  Describes an audio file. Audio is usually in MP3 or M4A format.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | int32 | Duration of the audio, in seconds; as defined by the sender. |
  | title | string | Title of the audio; as defined by the sender. |
  | performer | string | Performer of the audio; as defined by the sender. |
  | file_name | string | Original name of the file; as defined by the sender. |
  | mime_type | string | The MIME type of the file; as defined by the sender. |
  | album_cover_minithumbnail | minithumbnail | The minithumbnail of the album cover; may be null. |
  | album_cover_thumbnail | thumbnail | The thumbnail of the album cover in JPEG format; as defined by the sender. The full size thumbnail is supposed to be extracted from the downloaded file; may be null. |
  | audio | file | File containing the audio. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1audio.html).
  """

  defstruct "@type": "audio", "@extra": nil, duration: nil, title: nil, performer: nil, file_name: nil, mime_type: nil, album_cover_minithumbnail: nil, album_cover_thumbnail: nil, audio: nil
end
defmodule PageBlockTitle do
  @moduledoc  """
  The title of a page.

  | Name | Type | Description |
  |------|------| ------------|
  | title | RichText | Title. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_title.html).
  """

  defstruct "@type": "pageBlockTitle", "@extra": nil, title: nil
end
defmodule RichText do
  @moduledoc  """


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_rich_text.html).
  """

  defstruct "@type": "RichText", "@extra": nil
end
defmodule UpdateTermsOfService do
  @moduledoc  """
  New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method must be called with the reason "Decline ToS update".

  | Name | Type | Description |
  |------|------| ------------|
  | terms_of_service_id | string | Identifier of the terms of service. |
  | terms_of_service | termsOfService | The new terms of service. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_terms_of_service.html).
  """

  defstruct "@type": "updateTermsOfService", "@extra": nil, terms_of_service_id: nil, terms_of_service: nil
end
defmodule RecommendedChatFilters do
  @moduledoc  """
  Contains a list of recommended chat filters.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_filters | recommendedChatFilter | List of recommended chat filters. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recommended_chat_filters.html).
  """

  defstruct "@type": "recommendedChatFilters", "@extra": nil, chat_filters: nil
end
defmodule ChatNotificationSettings do
  @moduledoc  """
  Contains information about notification settings for a chat.

  | Name | Type | Description |
  |------|------| ------------|
  | use_default_mute_for | bool | If true, mute_for is ignored and the value for the relevant type of chat is used instead. |
  | mute_for | int32 | Time left before notifications will be unmuted, in seconds. |
  | use_default_sound | bool | If true, the value for the relevant type of chat is used instead of sound_id. |
  | sound_id | int64 | Identifier of the notification sound to be played; 0 if sound is disabled. |
  | use_default_show_preview | bool | If true, show_preview is ignored and the value for the relevant type of chat is used instead. |
  | show_preview | bool | True, if message content must be displayed in notifications. |
  | use_default_disable_pinned_message_notifications | bool | If true, disable_pinned_message_notifications is ignored and the value for the relevant type of chat is used instead. |
  | disable_pinned_message_notifications | bool | If true, notifications for incoming pinned messages will be created as for an ordinary unread message. |
  | use_default_disable_mention_notifications | bool | If true, disable_mention_notifications is ignored and the value for the relevant type of chat is used instead. |
  | disable_mention_notifications | bool | If true, notifications for messages with mentions will be created as for an ordinary unread message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_notification_settings.html).
  """

  defstruct "@type": "chatNotificationSettings", "@extra": nil, use_default_mute_for: nil, mute_for: nil, use_default_sound: nil, sound_id: nil, use_default_show_preview: nil, show_preview: nil, use_default_disable_pinned_message_notifications: nil, disable_pinned_message_notifications: nil, use_default_disable_mention_notifications: nil, disable_mention_notifications: nil
end
defmodule MessageSchedulingStateSendWhenOnline do
  @moduledoc  """
  The message will be sent when the peer will be online. Applicable to private chats only and when the exact online status of the peer is known.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_scheduling_state_send_when_online.html).
  """

  defstruct "@type": "messageSchedulingStateSendWhenOnline", "@extra": nil
end
defmodule InlineKeyboardButtonTypeCallback do
  @moduledoc  """
  A button that sends a callback query to a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | data | bytes | Data to be sent to the bot via a callback query. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inline_keyboard_button_type_callback.html).
  """

  defstruct "@type": "inlineKeyboardButtonTypeCallback", "@extra": nil, data: nil
end
defmodule TextParseModeMarkdown do
  @moduledoc  """
  The text uses Markdown-style formatting.

  | Name | Type | Description |
  |------|------| ------------|
  | version | int32 | Version of the parser: 0 or 1 - Telegram Bot API "Markdown" parse mode, 2 - Telegram Bot API "MarkdownV2" parse mode. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1text_parse_mode_markdown.html).
  """

  defstruct "@type": "textParseModeMarkdown", "@extra": nil, version: nil
end
defmodule JsonValueBoolean do
  @moduledoc  """
  Represents a boolean JSON value.

  | Name | Type | Description |
  |------|------| ------------|
  | value | bool | The value. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1json_value_boolean.html).
  """

  defstruct "@type": "jsonValueBoolean", "@extra": nil, value: nil
end
defmodule MessageSenderUser do
  @moduledoc  """
  The message was sent by a known user.

  | Name | Type | Description |
  |------|------| ------------|
  | user_id | int53 | Identifier of the user that sent the message. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_sender_user.html).
  """

  defstruct "@type": "messageSenderUser", "@extra": nil, user_id: nil
end
defmodule MessageWebAppDataSent do
  @moduledoc  """
  Data from a Web App has been sent to a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | button_text | string | Text of the <a class="el" href="classtd_1_1td__api_1_1keyboard_button_type_web_app.html">keyboardButtonTypeWebApp</a> button, which opened the Web App. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_web_app_data_sent.html).
  """

  defstruct "@type": "messageWebAppDataSent", "@extra": nil, button_text: nil
end
defmodule MessageCustomServiceAction do
  @moduledoc  """
  A non-standard action has happened in the chat.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | Message text to be shown in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_custom_service_action.html).
  """

  defstruct "@type": "messageCustomServiceAction", "@extra": nil, text: nil
end
defmodule PaymentProviderSmartGlocal do
  @moduledoc  """
  Smart Glocal payment provider.

  | Name | Type | Description |
  |------|------| ------------|
  | public_token | string | Public payment token. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1payment_provider_smart_glocal.html).
  """

  defstruct "@type": "paymentProviderSmartGlocal", "@extra": nil, public_token: nil
end
defmodule Call do
  @moduledoc  """
  Describes a call.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int32 | Call identifier, not persistent. |
  | user_id | int53 | Peer user identifier. |
  | is_outgoing | bool | True, if the call is outgoing. |
  | is_video | bool | True, if the call is a video call. |
  | state | CallState | Call state. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1call.html).
  """

  defstruct "@type": "call", "@extra": nil, id: nil, user_id: nil, is_outgoing: nil, is_video: nil, state: nil
end
defmodule PassportElementTypeEmailAddress do
  @moduledoc  """
  A Telegram Passport element containing the user's email address.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_type_email_address.html).
  """

  defstruct "@type": "passportElementTypeEmailAddress", "@extra": nil
end
defmodule VoiceNote do
  @moduledoc  """
  Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | int32 | Duration of the voice note, in seconds; as defined by the sender. |
  | waveform | bytes | A waveform representation of the voice note in 5-bit format. |
  | mime_type | string | MIME type of the file; as defined by the sender. |
  | is_recognized | bool | True, if speech recognition is completed; Premium users only. |
  | recognized_text | string | Recognized text of the voice note; Premium users only. Call <a class="el" href="classtd_1_1td__api_1_1recognize_speech.html">recognizeSpeech</a> to get recognized text of the voice note. |
  | voice | file | File containing the voice note. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1voice_note.html).
  """

  defstruct "@type": "voiceNote", "@extra": nil, duration: nil, waveform: nil, mime_type: nil, is_recognized: nil, recognized_text: nil, voice: nil
end
defmodule PassportElementError do
  @moduledoc  """
  Contains the description of an error in a Telegram Passport element.

  | Name | Type | Description |
  |------|------| ------------|
  | type | PassportElementType | Type of the Telegram Passport element which has the error. |
  | message | string | Error message. |
  | source | PassportElementErrorSource | Error source. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1passport_element_error.html).
  """

  defstruct "@type": "passportElementError", "@extra": nil, type: nil, message: nil, source: nil
end
defmodule FormattedText do
  @moduledoc  """
  A text with some entities.

  | Name | Type | Description |
  |------|------| ------------|
  | text | string | The text. |
  | entities | textEntity | Entities contained in the text. Entities can be nested, but must not mutually intersect with each other. Pre, Code and PreCode entities can't contain other entities. Bold, Italic, Underline, Strikethrough, and Spoiler entities can contain and to be contained in all other entities. All other entities can't contain each other. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1formatted_text.html).
  """

  defstruct "@type": "formattedText", "@extra": nil, text: nil, entities: nil
end
defmodule PageBlockTableCell do
  @moduledoc  """
  Represents a cell of a table.

  | Name | Type | Description |
  |------|------| ------------|
  | text | RichText | Cell text; may be null. If the text is null, then the cell must be invisible. |
  | is_header | bool | True, if it is a header cell. |
  | colspan | int32 | The number of columns the cell spans. |
  | rowspan | int32 | The number of rows the cell spans. |
  | align | PageBlockHorizontalAlignment | Horizontal cell content alignment. |
  | valign | PageBlockVerticalAlignment | Vertical cell content alignment. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1page_block_table_cell.html).
  """

  defstruct "@type": "pageBlockTableCell", "@extra": nil, text: nil, is_header: nil, colspan: nil, rowspan: nil, align: nil, valign: nil
end
defmodule InputMessagePoll do
  @moduledoc  """
  A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot.

  | Name | Type | Description |
  |------|------| ------------|
  | question | string | Poll question; 1-255 characters (up to 300 characters for bots). |
  | options | string | List of poll answer options, 2-10 strings 1-100 characters each. |
  | is_anonymous | bool | True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels. |
  | type | PollType | Type of the poll. |
  | open_period | int32 | Amount of time the poll will be active after creation, in seconds; for bots only. |
  | close_date | int32 | Point in time (Unix timestamp) when the poll will automatically be closed; for bots only. |
  | is_closed | bool | True, if the poll needs to be sent already closed; for bots only. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_message_poll.html).
  """

  defstruct "@type": "inputMessagePoll", "@extra": nil, question: nil, options: nil, is_anonymous: nil, type: nil, open_period: nil, close_date: nil, is_closed: nil
end
defmodule ChatPhoto do
  @moduledoc  """
  Describes a chat or user profile photo.

  | Name | Type | Description |
  |------|------| ------------|
  | id | int64 | Unique photo identifier. |
  | added_date | int32 | Point in time (Unix timestamp) when the photo has been added. |
  | minithumbnail | minithumbnail | Photo minithumbnail; may be null. |
  | sizes | photoSize | Available variants of the photo in JPEG format, in different size. |
  | animation | animatedChatPhoto | A big (640x640) animated variant of the photo in MPEG4 format; may be null. |
  | small_animation | animatedChatPhoto | A small (160x160) animated variant of the photo in MPEG4 format; may be null even the big animation is available. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_photo.html).
  """

  defstruct "@type": "chatPhoto", "@extra": nil, id: nil, added_date: nil, minithumbnail: nil, sizes: nil, animation: nil, small_animation: nil
end
defmodule MessageChatDeletePhoto do
  @moduledoc  """
  A deleted chat photo.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_chat_delete_photo.html).
  """

  defstruct "@type": "messageChatDeletePhoto", "@extra": nil
end
defmodule ChatActionChoosingLocation do
  @moduledoc  """
  The user is picking a location or venue to send.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1chat_action_choosing_location.html).
  """

  defstruct "@type": "chatActionChoosingLocation", "@extra": nil
end
defmodule MessageSchedulingStateSendAtDate do
  @moduledoc  """
  The message will be sent at the specified date.

  | Name | Type | Description |
  |------|------| ------------|
  | send_date | int32 | Date the message will be sent. The date must be within 367 days in the future. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_scheduling_state_send_at_date.html).
  """

  defstruct "@type": "messageSchedulingStateSendAtDate", "@extra": nil, send_date: nil
end
defmodule IdentityDocument do
  @moduledoc  """
  An identity document.

  | Name | Type | Description |
  |------|------| ------------|
  | number | string | Document number; 1-24 characters. |
  | expiry_date | date | Document expiry date; may be null if not applicable. |
  | front_side | datedFile | Front side of the document. |
  | reverse_side | datedFile | Reverse side of the document; only for driver license and identity card; may be null. |
  | selfie | datedFile | Selfie with the document; may be null. |
  | translation | datedFile | List of files containing a certified English translation of the document. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1identity_document.html).
  """

  defstruct "@type": "identityDocument", "@extra": nil, number: nil, expiry_date: nil, front_side: nil, reverse_side: nil, selfie: nil, translation: nil
end
defmodule FileDownloadedPrefixSize do
  @moduledoc  """
  Contains size of downloaded prefix of a file.

  | Name | Type | Description |
  |------|------| ------------|
  | size | int53 | The prefix size, in bytes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1file_downloaded_prefix_size.html).
  """

  defstruct "@type": "fileDownloadedPrefixSize", "@extra": nil, size: nil
end
defmodule DiceStickersSlotMachine do
  @moduledoc  """
  Animated stickers to be combined into a slot machine.

  | Name | Type | Description |
  |------|------| ------------|
  | background | sticker | The animated sticker with the slot machine background. The background animation must start playing after all reel animations finish. |
  | lever | sticker | The animated sticker with the lever animation. The lever animation must play once in the initial dice state. |
  | left_reel | sticker | The animated sticker with the left reel. |
  | center_reel | sticker | The animated sticker with the center reel. |
  | right_reel | sticker | The animated sticker with the right reel. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1dice_stickers_slot_machine.html).
  """

  defstruct "@type": "diceStickersSlotMachine", "@extra": nil, background: nil, lever: nil, left_reel: nil, center_reel: nil, right_reel: nil
end
defmodule UserPrivacySettingRuleRestrictContacts do
  @moduledoc  """
  A rule to restrict all contacts of a user from doing something.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1user_privacy_setting_rule_restrict_contacts.html).
  """

  defstruct "@type": "userPrivacySettingRuleRestrictContacts", "@extra": nil
end
defmodule MessagePositions do
  @moduledoc  """
  Contains a list of message positions.

  | Name | Type | Description |
  |------|------| ------------|
  | total_count | int32 | Total number of messages found. |
  | positions | messagePosition | List of message positions. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_positions.html).
  """

  defstruct "@type": "messagePositions", "@extra": nil, total_count: nil, positions: nil
end
defmodule GroupCallStream do
  @moduledoc  """
  Describes an available stream in a group call.

  | Name | Type | Description |
  |------|------| ------------|
  | channel_id | int32 | Identifier of an audio/video channel. |
  | scale | int32 | Scale of segment durations in the stream. The duration is 1000/(2**scale) milliseconds. |
  | time_offset | int53 | Point in time when the stream currently ends; Unix timestamp in milliseconds. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1group_call_stream.html).
  """

  defstruct "@type": "groupCallStream", "@extra": nil, channel_id: nil, scale: nil, time_offset: nil
end
defmodule InternalLinkTypeActiveSessions do
  @moduledoc  """
  The link is a link to the active sessions section of the application. Use getActiveSessions to handle the link.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1internal_link_type_active_sessions.html).
  """

  defstruct "@type": "internalLinkTypeActiveSessions", "@extra": nil
end
defmodule UpdateChatUnreadReactionCount do
  @moduledoc  """
  The chat unread_reaction_count has changed.

  | Name | Type | Description |
  |------|------| ------------|
  | chat_id | int53 | Chat identifier. |
  | unread_reaction_count | int32 | The number of messages with unread reactions left in the chat. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1update_chat_unread_reaction_count.html).
  """

  defstruct "@type": "updateChatUnreadReactionCount", "@extra": nil, chat_id: nil, unread_reaction_count: nil
end
defmodule MessageAnimation do
  @moduledoc  """
  An animation message (GIF-style).

  | Name | Type | Description |
  |------|------| ------------|
  | animation | animation | The animation description. |
  | caption | formattedText | Animation caption. |
  | is_secret | bool | True, if the animation thumbnail must be blurred and the animation must be shown only while tapped. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1message_animation.html).
  """

  defstruct "@type": "messageAnimation", "@extra": nil, animation: nil, caption: nil, is_secret: nil
end
defmodule InputChatPhotoAnimation do
  @moduledoc  """
  An animation in MPEG4 format; must be square, at most 10 seconds long, have width between 160 and 800 and be at most 2MB in size.

  | Name | Type | Description |
  |------|------| ------------|
  | animation | InputFile | Animation to be set as profile photo. Only <a class="el" href="classtd_1_1td__api_1_1input_file_local.html">inputFileLocal</a> and <a class="el" href="classtd_1_1td__api_1_1input_file_generated.html">inputFileGenerated</a> are allowed. |
  | main_frame_timestamp | double | Timestamp of the frame, which will be used as static chat photo. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1input_chat_photo_animation.html).
  """

  defstruct "@type": "inputChatPhotoAnimation", "@extra": nil, animation: nil, main_frame_timestamp: nil
end
defmodule Photo do
  @moduledoc  """
  Describes a photo.

  | Name | Type | Description |
  |------|------| ------------|
  | has_stickers | bool | True, if stickers were added to the photo. The list of corresponding sticker sets can be received using <a class="el" href="classtd_1_1td__api_1_1get_attached_sticker_sets.html">getAttachedStickerSets</a>. |
  | minithumbnail | minithumbnail | Photo minithumbnail; may be null. |
  | sizes | photoSize | Available variants of the photo, in different sizes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1photo.html).
  """

  defstruct "@type": "photo", "@extra": nil, has_stickers: nil, minithumbnail: nil, sizes: nil
end
defmodule SessionTypeWindows do
  @moduledoc  """
  The session is running on a Windows device.


  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1session_type_windows.html).
  """

  defstruct "@type": "sessionTypeWindows", "@extra": nil
end
defmodule DeviceTokenApplePush do
  @moduledoc  """
  A token for Apple Push Notification service.

  | Name | Type | Description |
  |------|------| ------------|
  | device_token | string | Device token; may be empty to deregister a device. |
  | is_app_sandbox | bool | True, if App Sandbox is enabled. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1device_token_apple_push.html).
  """

  defstruct "@type": "deviceTokenApplePush", "@extra": nil, device_token: nil, is_app_sandbox: nil
end
defmodule Error do
  @moduledoc  """
  An object of this type can be returned on every function call, in case of an error.

  | Name | Type | Description |
  |------|------| ------------|
  | code | int32 | Error code; subject to future changes. If the error code is 406, the error message must not be processed in any way and must not be displayed to the user. |
  | message | string | Error message; subject to future changes. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1error.html).
  """

  defstruct "@type": "error", "@extra": nil, code: nil, message: nil
end
defmodule Video do
  @moduledoc  """
  Describes a video file.

  | Name | Type | Description |
  |------|------| ------------|
  | duration | int32 | Duration of the video, in seconds; as defined by the sender. |
  | width | int32 | Video width; as defined by the sender. |
  | height | int32 | Video height; as defined by the sender. |
  | file_name | string | Original name of the file; as defined by the sender. |
  | mime_type | string | MIME type of the file; as defined by the sender. |
  | has_stickers | bool | True, if stickers were added to the video. The list of corresponding sticker sets can be received using <a class="el" href="classtd_1_1td__api_1_1get_attached_sticker_sets.html">getAttachedStickerSets</a>. |
  | supports_streaming | bool | True, if the video is supposed to be streamed. |
  | minithumbnail | minithumbnail | Video minithumbnail; may be null. |
  | thumbnail | thumbnail | Video thumbnail in JPEG or MPEG4 format; as defined by the sender; may be null. |
  | video | file | File containing the video. |

  More details on [telegram's documentation](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1video.html).
  """

  defstruct "@type": "video", "@extra": nil, duration: nil, width: nil, height: nil, file_name: nil, mime_type: nil, has_stickers: nil, supports_streaming: nil, minithumbnail: nil, thumbnail: nil, video: nil
end
end
