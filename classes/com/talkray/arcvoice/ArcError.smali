.class public final enum Lcom/talkray/arcvoice/ArcError;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/talkray/arcvoice/ArcError;

.field public static final enum AUDIO_MESSAGE_ALREADY_RECORDING:Lcom/talkray/arcvoice/ArcError;

.field public static final enum AUDIO_MESSAGE_TOO_LARGE:Lcom/talkray/arcvoice/ArcError;

.field public static final enum CALL_FAILED:Lcom/talkray/arcvoice/ArcError;

.field public static final enum CANNOT_CALL_WHILE_RECORDING:Lcom/talkray/arcvoice/ArcError;

.field public static final enum CANNOT_RECORD_WHILE_ON_CALL:Lcom/talkray/arcvoice/ArcError;

.field public static final enum CONVERSION_FAILURE:Lcom/talkray/arcvoice/ArcError;

.field public static final enum DOWNLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;

.field public static final enum INVALID_CREDENTIALS:Lcom/talkray/arcvoice/ArcError;

.field public static final enum INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

.field public static final enum INVALID_GROUP_ID:Lcom/talkray/arcvoice/ArcError;

.field public static final enum INVALID_PERMISSIONS:Lcom/talkray/arcvoice/ArcError;

.field public static final enum INVALID_URL:Lcom/talkray/arcvoice/ArcError;

.field public static final enum INVALID_USER_ID:Lcom/talkray/arcvoice/ArcError;

.field public static final enum JOIN_GROUP_FAILED:Lcom/talkray/arcvoice/ArcError;

.field public static final enum NO_NETWORK:Lcom/talkray/arcvoice/ArcError;

.field public static final enum RECORDING_PLAYBACK_FAILURE:Lcom/talkray/arcvoice/ArcError;

.field public static final enum TIMEOUT:Lcom/talkray/arcvoice/ArcError;

.field public static final enum UPLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "NO_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->NO_NETWORK:Lcom/talkray/arcvoice/ArcError;

    .line 11
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "CALL_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->CALL_FAILED:Lcom/talkray/arcvoice/ArcError;

    .line 12
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "INVALID_CREDENTIALS"

    invoke-direct {v0, v1, v5}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->INVALID_CREDENTIALS:Lcom/talkray/arcvoice/ArcError;

    .line 13
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "JOIN_GROUP_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->JOIN_GROUP_FAILED:Lcom/talkray/arcvoice/ArcError;

    .line 14
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v7}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->TIMEOUT:Lcom/talkray/arcvoice/ArcError;

    .line 15
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "INVALID_FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    .line 16
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "INVALID_USER_ID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->INVALID_USER_ID:Lcom/talkray/arcvoice/ArcError;

    .line 17
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "INVALID_GROUP_ID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->INVALID_GROUP_ID:Lcom/talkray/arcvoice/ArcError;

    .line 18
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "AUDIO_MESSAGE_TOO_LARGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->AUDIO_MESSAGE_TOO_LARGE:Lcom/talkray/arcvoice/ArcError;

    .line 19
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "CANNOT_CALL_WHILE_RECORDING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->CANNOT_CALL_WHILE_RECORDING:Lcom/talkray/arcvoice/ArcError;

    .line 20
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "CANNOT_RECORD_WHILE_ON_CALL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->CANNOT_RECORD_WHILE_ON_CALL:Lcom/talkray/arcvoice/ArcError;

    .line 21
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "DOWNLOAD_FAILURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->DOWNLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;

    .line 22
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "UPLOAD_FAILURE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->UPLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;

    .line 23
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "INVALID_URL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->INVALID_URL:Lcom/talkray/arcvoice/ArcError;

    .line 24
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "CONVERSION_FAILURE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->CONVERSION_FAILURE:Lcom/talkray/arcvoice/ArcError;

    .line 25
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "INVALID_PERMISSIONS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->INVALID_PERMISSIONS:Lcom/talkray/arcvoice/ArcError;

    .line 26
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "AUDIO_MESSAGE_ALREADY_RECORDING"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->AUDIO_MESSAGE_ALREADY_RECORDING:Lcom/talkray/arcvoice/ArcError;

    .line 27
    new-instance v0, Lcom/talkray/arcvoice/ArcError;

    const-string v1, "RECORDING_PLAYBACK_FAILURE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/talkray/arcvoice/ArcError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->RECORDING_PLAYBACK_FAILURE:Lcom/talkray/arcvoice/ArcError;

    .line 8
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/talkray/arcvoice/ArcError;

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->NO_NETWORK:Lcom/talkray/arcvoice/ArcError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->CALL_FAILED:Lcom/talkray/arcvoice/ArcError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->INVALID_CREDENTIALS:Lcom/talkray/arcvoice/ArcError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->JOIN_GROUP_FAILED:Lcom/talkray/arcvoice/ArcError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/talkray/arcvoice/ArcError;->TIMEOUT:Lcom/talkray/arcvoice/ArcError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->INVALID_FILE:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->INVALID_USER_ID:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->INVALID_GROUP_ID:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->AUDIO_MESSAGE_TOO_LARGE:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->CANNOT_CALL_WHILE_RECORDING:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->CANNOT_RECORD_WHILE_ON_CALL:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->DOWNLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->UPLOAD_FAILURE:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->INVALID_URL:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->CONVERSION_FAILURE:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->INVALID_PERMISSIONS:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->AUDIO_MESSAGE_ALREADY_RECORDING:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/talkray/arcvoice/ArcError;->RECORDING_PLAYBACK_FAILURE:Lcom/talkray/arcvoice/ArcError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/talkray/arcvoice/ArcError;->$VALUES:[Lcom/talkray/arcvoice/ArcError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/talkray/arcvoice/ArcError;
    .registers 2

    .prologue
    .line 8
    const-class v0, Lcom/talkray/arcvoice/ArcError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/talkray/arcvoice/ArcError;

    return-object v0
.end method

.method public static values()[Lcom/talkray/arcvoice/ArcError;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/talkray/arcvoice/ArcError;->$VALUES:[Lcom/talkray/arcvoice/ArcError;

    invoke-virtual {v0}, [Lcom/talkray/arcvoice/ArcError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/talkray/arcvoice/ArcError;

    return-object v0
.end method
