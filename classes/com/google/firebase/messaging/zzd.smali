.class final Lcom/google/firebase/messaging/zzd;
.super Ljava/lang/Object;


# direct methods
.method private static zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "google.c.a.c_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v2, "_nmid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string v0, "google.c.a.c_l"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v2, "_nmn"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-string v0, "from"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b2

    const-string v2, "/topics/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b2

    :goto_2f
    if-eqz v0, :cond_36

    const-string v2, "_nt"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :try_start_36
    const-string v0, "google.c.a.ts"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "_nmt"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_49} :catch_b5

    :goto_49
    const-string v0, "google.c.a.udt"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    :try_start_51
    const-string v0, "google.c.a.udt"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "_ndt"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_64} :catch_be

    :cond_64
    :goto_64
    const-string v0, "FirebaseMessaging"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a6

    const-string v0, "FirebaseMessaging"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sending event="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    invoke-static {p0}, Lcom/google/firebase/messaging/zzd;->zzdc(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    if-eqz v0, :cond_c7

    const-string v2, "fcm"

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_b1
    return-void

    :cond_b2
    const/4 v0, 0x0

    goto/16 :goto_2f

    :catch_b5
    move-exception v0

    const-string v2, "FirebaseMessaging"

    const-string v3, "Error while parsing timestamp in GCM event"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    :catch_be
    move-exception v0

    const-string v2, "FirebaseMessaging"

    const-string v3, "Error while parsing use_device_time in GCM event"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    :cond_c7
    const-string v0, "FirebaseMessaging"

    const-string v1, "Unable to log event: analytics library is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1
.end method

.method private static zzdc(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static zzf(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "google.c.a.abt"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "fcm"

    new-instance v2, Lcom/google/firebase/messaging/zzb;

    invoke-direct {v2}, Lcom/google/firebase/messaging/zzb;-><init>()V

    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v2, v3}, Lcom/google/firebase/messaging/zzc;->zza(Landroid/content/Context;Ljava/lang/String;[BLcom/google/firebase/messaging/zzb;I)V

    :cond_18
    const-string v0, "_nr"

    invoke-static {p0, v0, p1}, Lcom/google/firebase/messaging/zzd;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static zzg(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x3

    if-eqz p1, :cond_52

    const-string v0, "google.c.a.tc"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-static {p0}, Lcom/google/firebase/messaging/zzd;->zzdc(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "FirebaseMessaging"

    const-string v2, "Received event with track-conversion=true. Setting user property and reengagement event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    if-eqz v0, :cond_58

    const-string v1, "google.c.a.c_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fcm"

    const-string v3, "_ln"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->setUserPropertyInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "source"

    const-string v4, "Firebase"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    const-string v4, "notification"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "campaign"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fcm"

    const-string v3, "_cmp"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_52
    :goto_52
    const-string v0, "_no"

    invoke-static {p0, v0, p1}, Lcom/google/firebase/messaging/zzd;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    :cond_58
    const-string v0, "FirebaseMessaging"

    const-string v1, "Unable to set user property for conversion tracking:  analytics library is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_60
    const-string v0, "FirebaseMessaging"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "FirebaseMessaging"

    const-string v1, "Received event with track-conversion=false. Do not set user property"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public static zzh(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string v0, "_nd"

    invoke-static {p0, v0, p1}, Lcom/google/firebase/messaging/zzd;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static zzi(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string v0, "_nf"

    invoke-static {p0, v0, p1}, Lcom/google/firebase/messaging/zzd;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
