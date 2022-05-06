.class public Lcom/facebook/share/internal/ShareContentValidation;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;,
        Lcom/facebook/share/internal/ShareContentValidation$Validator;,
        Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;
    }
.end annotation


# static fields
.field private static ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .registers 3

    .prologue
    .line 298
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 181
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$12(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 203
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$13(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .registers 1

    .prologue
    .line 322
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateMessengerOpenGraphMusicTemplate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    return-void
.end method

.method static synthetic access$14(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .registers 1

    .prologue
    .line 335
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    return-void
.end method

.method static synthetic access$15(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .registers 1

    .prologue
    .line 352
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 136
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 193
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 218
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$6(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 249
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateCameraEffectContent(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$7(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 257
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$8(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 274
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$9(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method private static getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 89
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 91
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 81
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 82
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$Validator;

    invoke-direct {v0, v1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$Validator;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 84
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .prologue
    .line 95
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 96
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 98
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p0, :cond_a

    .line 104
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must provide non-null content to share"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_a
    instance-of v0, p0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_14

    .line 108
    check-cast p0, Lcom/facebook/share/model/ShareLinkContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareLinkContent;)V

    .line 126
    :cond_13
    :goto_13
    return-void

    .line 109
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_14
    instance-of v0, p0, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_1e

    .line 110
    check-cast p0, Lcom/facebook/share/model/SharePhotoContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhotoContent;)V

    goto :goto_13

    .line 111
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_1e
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v0, :cond_28

    .line 112
    check-cast p0, Lcom/facebook/share/model/ShareVideoContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideoContent;)V

    goto :goto_13

    .line 113
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_28
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_32

    .line 114
    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphContent;)V

    goto :goto_13

    .line 115
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_32
    instance-of v0, p0, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v0, :cond_3c

    .line 116
    check-cast p0, Lcom/facebook/share/model/ShareMediaContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMediaContent;)V

    goto :goto_13

    .line 117
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_3c
    instance-of v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-eqz v0, :cond_46

    .line 118
    check-cast p0, Lcom/facebook/share/model/ShareCameraEffectContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareCameraEffectContent;)V

    goto :goto_13

    .line 119
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_46
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    if-eqz v0, :cond_50

    .line 120
    check-cast p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    goto :goto_13

    .line 121
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_50
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    if-eqz v0, :cond_5a

    .line 122
    check-cast p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    goto :goto_13

    .line 123
    .restart local p0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_5a
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    if-eqz v0, :cond_13

    .line 124
    check-cast p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    .end local p0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    goto :goto_13
.end method

.method private static validateCameraEffectContent(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 5
    .param p0, "cameraEffectContent"    # Lcom/facebook/share/model/ShareCameraEffectContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getEffectId()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "effectId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 253
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Must specify a non-empty effectId"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_12
    return-void
.end method

.method public static validateForApiShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 77
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 78
    return-void
.end method

.method public static validateForMessage(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 65
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 66
    return-void
.end method

.method public static validateForNativeShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 69
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 70
    return-void
.end method

.method public static validateForWebShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 73
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 74
    return-void
.end method

.method private static validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 5
    .param p0, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    .line 131
    .local v0, "imageUrl":Landroid/net/Uri;
    if-eqz v0, :cond_14

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 132
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Image Url must be an http:// or https:// url"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_14
    return-void
.end method

.method private static validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 10
    .param p0, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    const/4 v7, 0x6

    .line 219
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 221
    :cond_d
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Must specify at least one medium in ShareMediaContent."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_33

    .line 224
    new-instance v2, Lcom/facebook/FacebookException;

    .line 226
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 227
    const-string v4, "Cannot add more than %d media."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 228
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 225
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 233
    return-void

    .line 230
    :cond_3e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/ShareMedia;

    .line 231
    .local v1, "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMedia;)V

    goto :goto_37
.end method

.method public static validateMedium(Lcom/facebook/share/model/ShareMedia;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 8
    .param p0, "medium"    # Lcom/facebook/share/model/ShareMedia;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 236
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_a

    .line 237
    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    .end local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 247
    :goto_9
    return-void

    .line 238
    .restart local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_a
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_14

    .line 239
    check-cast p0, Lcom/facebook/share/model/ShareVideo;

    .end local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    goto :goto_9

    .line 241
    .restart local p0    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_14
    new-instance v0, Lcom/facebook/FacebookException;

    .line 243
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 244
    const-string v2, "Invalid media type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 242
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateMessengerOpenGraphMusicTemplate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .registers 3
    .param p0, "content"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 325
    new-instance v0, Lcom/facebook/FacebookException;

    .line 326
    const-string v1, "Must specify Page Id for ShareMessengerOpenGraphMusicTemplateContent"

    .line 325
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_12
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_20

    .line 329
    new-instance v0, Lcom/facebook/FacebookException;

    .line 330
    const-string v1, "Must specify url for ShareMessengerOpenGraphMusicTemplateContent"

    .line 329
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_20
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    .line 333
    return-void
.end method

.method private static validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "openGraphAction"    # Lcom/facebook/share/model/ShareOpenGraphAction;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 277
    if-nez p0, :cond_a

    .line 278
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify a non-null ShareOpenGraphAction"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 282
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "ShareOpenGraphAction must have a non-empty actionType"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 286
    return-void
.end method

.method private static validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 6
    .param p0, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphAction;)V

    .line 261
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "previewPropertyName":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 263
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Must specify a previewPropertyName."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_19
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareOpenGraphAction;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4a

    .line 267
    new-instance v1, Lcom/facebook/FacebookException;

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Property \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found on the action. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    const-string v3, "The name of the preview property must match the name of an "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 270
    const-string v3, "action property."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_4a
    return-void
.end method

.method private static validateOpenGraphKey(Ljava/lang/String;Z)V
    .registers 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "requireNamespace"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 389
    if-nez p1, :cond_5

    .line 402
    :cond_4
    return-void

    .line 393
    :cond_5
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "components":[Ljava/lang/String;
    array-length v2, v1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1b

    .line 395
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v4, "Open Graph keys must be namespaced: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-direct {v2, v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 397
    :cond_1b
    array-length v4, v1

    move v2, v3

    :goto_1d
    if-ge v2, v4, :cond_4

    aget-object v0, v1, v2

    .line 398
    .local v0, "component":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 399
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v4, "Invalid key found in Open Graph dictionary: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-direct {v2, v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 397
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d
.end method

.method private static validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "openGraphObject"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 291
    if-nez p0, :cond_a

    .line 292
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share a null ShareOpenGraphObject"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 296
    return-void
.end method

.method private static validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .registers 11
    .param p0, "valueContainer"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .param p2, "requireNamespace"    # Z

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 303
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_f

    .line 320
    return-void

    .line 303
    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphKey(Ljava/lang/String;Z)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 306
    .local v3, "o":Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/List;

    if-eqz v6, :cond_3f

    move-object v2, v3

    .line 307
    check-cast v2, Ljava/util/List;

    .line 308
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 309
    .local v4, "objectInList":Ljava/lang/Object;
    if-nez v4, :cond_3b

    .line 310
    new-instance v5, Lcom/facebook/FacebookException;

    .line 311
    const-string v6, "Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions"

    .line 310
    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    :cond_3b
    invoke-static {v4, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    goto :goto_27

    .line 317
    .end local v2    # "list":Ljava/util/List;
    .end local v4    # "objectInList":Ljava/lang/Object;
    :cond_3f
    invoke-static {v3, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    goto :goto_8
.end method

.method private static validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 406
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_a

    .line 407
    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphObject;)V

    .line 411
    :cond_9
    :goto_9
    return-void

    .line 408
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_a
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_9

    .line 409
    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_9
.end method

.method private static validatePhoto(Lcom/facebook/share/model/SharePhoto;)V
    .registers 5
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .prologue
    .line 156
    if-nez p0, :cond_a

    .line 157
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Cannot share a null SharePhoto"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .local v0, "photoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    .line 163
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    .line 164
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "SharePhoto does not have a Bitmap or ImageUrl specified"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_1e
    return-void
.end method

.method private static validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 10
    .param p0, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    const/4 v7, 0x6

    .line 138
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 140
    :cond_d
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Must specify at least one Photo in SharePhotoContent."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_33

    .line 143
    new-instance v2, Lcom/facebook/FacebookException;

    .line 145
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 146
    const-string v4, "Cannot add more than %d photos."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 147
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 144
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 153
    return-void

    .line 150
    :cond_3e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 151
    .local v0, "photo":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_37
.end method

.method private static validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 6
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 169
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/facebook/share/model/SharePhoto;)V

    .line 171
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, "photoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v0, :cond_21

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent()Z

    move-result v2

    if-nez v2, :cond_21

    .line 175
    new-instance v2, Lcom/facebook/FacebookException;

    .line 176
    const-string v3, "Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent"

    .line 175
    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_21
    return-void
.end method

.method private static validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 3
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 184
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 185
    :cond_13
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasContentProvider(Landroid/content/Context;)V

    .line 187
    :cond_1a
    return-void
.end method

.method private static validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/facebook/share/model/SharePhoto;)V

    .line 191
    return-void
.end method

.method private static validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V
    .registers 3
    .param p0, "button"    # Lcom/facebook/share/model/ShareMessengerActionButton;

    .prologue
    .line 368
    if-nez p0, :cond_3

    .line 379
    .end local p0    # "button":Lcom/facebook/share/model/ShareMessengerActionButton;
    :cond_2
    :goto_2
    return-void

    .line 372
    .restart local p0    # "button":Lcom/facebook/share/model/ShareMessengerActionButton;
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerActionButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 373
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify title for ShareMessengerActionButton"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_15
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    if-eqz v0, :cond_2

    .line 377
    check-cast p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    .end local p0    # "button":Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)V

    goto :goto_2
.end method

.method private static validateShareMessengerGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .registers 3
    .param p0, "content"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 338
    new-instance v0, Lcom/facebook/FacebookException;

    .line 339
    const-string v1, "Must specify Page Id for ShareMessengerGenericTemplateContent"

    .line 338
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_12
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    if-nez v0, :cond_20

    .line 342
    new-instance v0, Lcom/facebook/FacebookException;

    .line 343
    const-string v1, "Must specify element for ShareMessengerGenericTemplateContent"

    .line 342
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_20
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 346
    new-instance v0, Lcom/facebook/FacebookException;

    .line 347
    const-string v1, "Must specify title for ShareMessengerGenericTemplateElement"

    .line 346
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_36
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    .line 350
    return-void
.end method

.method private static validateShareMessengerMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .registers 3
    .param p0, "content"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 355
    new-instance v0, Lcom/facebook/FacebookException;

    .line 356
    const-string v1, "Must specify Page Id for ShareMessengerMediaTemplateContent"

    .line 355
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_12
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 359
    new-instance v0, Lcom/facebook/FacebookException;

    .line 360
    const-string v1, "Must specify either attachmentId or mediaURL for ShareMessengerMediaTemplateContent"

    .line 359
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_2a
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    .line 364
    return-void
.end method

.method private static validateShareMessengerURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)V
    .registers 3
    .param p0, "button"    # Lcom/facebook/share/model/ShareMessengerURLActionButton;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_e

    .line 384
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify url for ShareMessengerURLActionButton"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_e
    return-void
.end method

.method private static validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 5
    .param p0, "video"    # Lcom/facebook/share/model/ShareVideo;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 204
    if-nez p0, :cond_a

    .line 205
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot share a null ShareVideo"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v0

    .line 209
    .local v0, "localUri":Landroid/net/Uri;
    if-nez v0, :cond_18

    .line 210
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "ShareVideo does not have a LocalUrl specified"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_18
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 214
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "ShareVideo must reference a video that is on the device"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_2c
    return-void
.end method

.method private static validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    .line 197
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getPreviewPhoto()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 198
    .local v0, "previewPhoto":Lcom/facebook/share/model/SharePhoto;
    if-eqz v0, :cond_10

    .line 199
    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 201
    :cond_10
    return-void
.end method
