.class public Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;
.super Ljava/lang/Object;
.source "IcefireSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ledo/fantasy/game/IcefireSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundInfoForLoadedCompleted"
.end annotation


# instance fields
.field public isLoop:Z

.field public path:Ljava/lang/String;

.field public soundID:I

.field final synthetic this$0:Lcom/ledo/fantasy/game/IcefireSound;


# direct methods
.method public constructor <init>(Lcom/ledo/fantasy/game/IcefireSound;Ljava/lang/String;IZ)V
    .registers 5
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "soundId"    # I
    .param p4, "isLoop"    # Z

    .prologue
    .line 312
    iput-object p1, p0, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;->this$0:Lcom/ledo/fantasy/game/IcefireSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;->path:Ljava/lang/String;

    .line 314
    iput p3, p0, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;->soundID:I

    .line 315
    iput-boolean p4, p0, Lcom/ledo/fantasy/game/IcefireSound$SoundInfoForLoadedCompleted;->isLoop:Z

    .line 316
    return-void
.end method
