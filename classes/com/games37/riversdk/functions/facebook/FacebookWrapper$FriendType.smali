.class final enum Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;
.super Ljava/lang/Enum;
.source "FacebookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/functions/facebook/FacebookWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FriendType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

.field public static final enum INGAME:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

.field public static final enum INVITED:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 785
    new-instance v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    const-string v1, "INVITED"

    invoke-direct {v0, v1, v2}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INVITED:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    .line 790
    new-instance v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    const-string v1, "INGAME"

    invoke-direct {v0, v1, v3}, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INGAME:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    .line 780
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    sget-object v1, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INVITED:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->INGAME:Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->$VALUES:[Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

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
    .line 780
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 780
    const-class v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    return-object v0
.end method

.method public static values()[Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;
    .registers 1

    .prologue
    .line 780
    sget-object v0, Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->$VALUES:[Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    invoke-virtual {v0}, [Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/games37/riversdk/functions/facebook/FacebookWrapper$FriendType;

    return-object v0
.end method
