.class public final enum Lcom/games37/riversdk/core/share/SocialType;
.super Ljava/lang/Enum;
.source "SocialType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/games37/riversdk/core/share/SocialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/games37/riversdk/core/share/SocialType;

.field public static final enum FACEBOOK_TYPE:Lcom/games37/riversdk/core/share/SocialType;

.field public static final enum LINE_TYPE:Lcom/games37/riversdk/core/share/SocialType;

.field public static final enum MESSENGER_TYPE:Lcom/games37/riversdk/core/share/SocialType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/games37/riversdk/core/share/SocialType;

    const-string v1, "MESSENGER_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/core/share/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/share/SocialType;->MESSENGER_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    .line 21
    new-instance v0, Lcom/games37/riversdk/core/share/SocialType;

    const-string v1, "LINE_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/games37/riversdk/core/share/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/share/SocialType;->LINE_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    .line 26
    new-instance v0, Lcom/games37/riversdk/core/share/SocialType;

    const-string v1, "FACEBOOK_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/games37/riversdk/core/share/SocialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/core/share/SocialType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/games37/riversdk/core/share/SocialType;

    sget-object v1, Lcom/games37/riversdk/core/share/SocialType;->MESSENGER_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/games37/riversdk/core/share/SocialType;->LINE_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/games37/riversdk/core/share/SocialType;->FACEBOOK_TYPE:Lcom/games37/riversdk/core/share/SocialType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/games37/riversdk/core/share/SocialType;->$VALUES:[Lcom/games37/riversdk/core/share/SocialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/games37/riversdk/core/share/SocialType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/games37/riversdk/core/share/SocialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/core/share/SocialType;

    return-object v0
.end method

.method public static values()[Lcom/games37/riversdk/core/share/SocialType;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/games37/riversdk/core/share/SocialType;->$VALUES:[Lcom/games37/riversdk/core/share/SocialType;

    invoke-virtual {v0}, [Lcom/games37/riversdk/core/share/SocialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/games37/riversdk/core/share/SocialType;

    return-object v0
.end method
