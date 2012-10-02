.class public Lcom/google/android/finsky/activities/MainActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# static fields
.field private static sBillingInitialized:Z


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private final mHandler:Landroid/os/Handler;

.field private mLastShownErrorHash:I

.field private mMyCollectionItem:Landroid/view/MenuItem;

.field private mMyWishlistItem:Landroid/view/MenuItem;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

.field private mPageNeedsRefresh:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSequenceNumberToDrainFrom:I

.field private final mStopPreviewsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$1;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

    .line 215
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$2;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/MainActivity;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/MainActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/MainActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/activities/MainActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeBilling()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->initializeBillingCountries()V

    return-void
.end method

.method private buildAnalyticsUrl(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 330
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkHasPromoOffers(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 425
    new-instance v0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;-><init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;)V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->run(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method

.method private getCurrentBackend()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->getCurrentBackendId()I

    move-result v0

    return v0
.end method

.method public static getMyDownloadsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.VIEW_MY_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private handleIntent()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$3;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 267
    .local v8, currentIntent:Landroid/content/Intent;
    const-string v0, "authAccount"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 268
    .local v10, newAccountName:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 269
    const-string v0, "authAccount"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 271
    const-string v0, "b/5160617: Switching account to %s due to intent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v10}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-virtual {p0, v10}, Lcom/google/android/finsky/activities/MainActivity;->switchAccount(Ljava/lang/String;)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-direct {p0, v8}, Lcom/google/android/finsky/activities/MainActivity;->maybeShowErrorDialog(Landroid/content/Intent;)V

    .line 278
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 279
    .local v9, intentAction:Ljava/lang/String;
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-direct {p0, v8}, Lcom/google/android/finsky/activities/MainActivity;->handleSearchIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 281
    :cond_2
    const-string v0, "com.google.android.finsky.NAVIGATIONAL_SUGGESTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    invoke-direct {p0, v8}, Lcom/google/android/finsky/activities/MainActivity;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    :cond_3
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 286
    invoke-direct {p0, v8}, Lcom/google/android/finsky/activities/MainActivity;->handleViewIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 287
    :cond_5
    const-string v0, "com.google.android.finsky.DETAILS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_cookie"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "referrer_url"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_6
    const-string v0, "com.google.android.finsky.VIEW_MY_DOWNLOADS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 294
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 295
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_0

    .line 296
    :cond_7
    const-string v0, "com.google.android.finsky.CORPUS_HOME"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 297
    const-string v0, "backend_id"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 299
    .local v5, backendId:I
    const-string v0, "referrer_url"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, referrerUrl:Ljava/lang/String;
    if-nez v5, :cond_8

    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_8
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    .end local v5           #backendId:I
    .end local v7           #referrerUrl:Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 310
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 311
    sget-boolean v0, Lcom/google/android/finsky/activities/MainActivity;->sSwitchToMyApps:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 314
    sput-boolean v3, Lcom/google/android/finsky/activities/MainActivity;->sSwitchToMyApps:Z

    goto/16 :goto_0
.end method

.method private handleSearchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->isTosAccepted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, query:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private handleViewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "currentIntent"

    .prologue
    const/4 v2, 0x0

    .line 320
    const-string v1, "deepLink"

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/activities/MainActivity;->buildAnalyticsUrl(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, analyticsUrl:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    invoke-interface {v1, v2, v2, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dont_resolve_again"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->handleDeepLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeBilling()V
    .locals 2

    .prologue
    .line 397
    sget-boolean v0, Lcom/google/android/finsky/activities/MainActivity;->sBillingInitialized:Z

    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/activities/MainActivity;->sBillingInitialized:Z

    .line 401
    const-string v0, "Optimistically initializing billing parameters."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/MainActivity$5;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->initializeCarrierBillingStorage(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initializeBillingCountries()V
    .locals 3

    .prologue
    .line 430
    new-instance v0, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    .line 431
    .local v0, gbca:Lcom/google/android/finsky/billing/GetBillingCountriesAction;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method private launchUrlInBrowser(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 803
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 804
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 805
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 807
    return-void
.end method

.method private maybeShowErrorDialog(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    .line 866
    const-string v0, "error_html_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    const/4 v0, 0x0

    .line 868
    const-string v1, "error_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    const-string v0, "error_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    :cond_0
    const-string v1, "error_html_message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 872
    const-string v2, "error_doc_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 874
    iget v4, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    if-eq v4, v3, :cond_1

    .line 875
    const-string v4, "error_return_code"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 877
    invoke-direct {p0, v0, v1, v4, v2}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 878
    iput v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    .line 881
    :cond_1
    return-void
.end method

.method private onMyCollectionSelected()V
    .locals 5

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 779
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v0

    .line 780
    .local v0, currentBackendId:I
    packed-switch v0, :pswitch_data_0

    .line 794
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 796
    :goto_0
    return-void

    .line 785
    :pswitch_1
    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->isConsumptionAppInstalled(Landroid/content/pm/PackageManager;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 786
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showAppNeededDialog(I)V

    goto :goto_0

    .line 789
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppLaunchIntent(Landroid/content/pm/PackageManager;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 791
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMyWishlistSelected()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToMyWishlist()V

    .line 800
    return-void
.end method

.method private redeemGiftCard()V
    .locals 3

    .prologue
    .line 810
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, accountName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 812
    const-string v1, "Redeem chosen with no current account."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setDebugActivityEnabled(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 678
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 680
    if-eqz p1, :cond_0

    move v0, v1

    .line 685
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/finsky/activities/DebugActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 687
    return-void

    .line 683
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private setupDcbDebugMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 835
    const v1, 0x7f080232

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 836
    .local v0, dcbDeug:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 837
    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$7;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 845
    return-void
.end method

.method private setupDebugMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 823
    const v1, 0x7f080231

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 824
    .local v0, debugOptions:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 825
    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/MainActivity$6;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 832
    return-void
.end method

.method private showErrorDialogForCode(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "returnCode"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 849
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v4

    invoke-interface {v4, p4}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v1

    .line 850
    .local v1, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    packed-switch p3, :pswitch_data_0

    .line 860
    :cond_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 861
    :goto_0
    return v2

    .line 852
    :pswitch_0
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isSystemApp:Z

    if-eqz v4, :cond_1

    move v0, v2

    .line 853
    .local v0, isSystemApp:Z
    :goto_1
    if-nez v0, :cond_0

    .line 854
    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/MainActivity;->showMismatchedCertificatesDialog(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #isSystemApp:Z
    :cond_1
    move v0, v3

    .line 852
    goto :goto_1

    .line 850
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showErrorMessage(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 930
    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refreshOnResume()V

    .line 968
    :goto_0
    return-void

    .line 936
    :cond_0
    instance-of v0, p1, Lcom/google/android/finsky/utils/BgDataDisabledError;

    if-eqz v0, :cond_1

    .line 937
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->showBackgroundDataDialog()V

    goto :goto_0

    .line 941
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    .line 942
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 943
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 944
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/MainActivity$8;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/activities/MainActivity$8;-><init>(Lcom/google/android/finsky/activities/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private showMismatchedCertificatesDialog(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 976
    const v0, 0x7f0700bd

    const v1, 0x7f070197

    const v2, 0x7f070103

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 980
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 981
    const-string v2, "error_package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 983
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "mismatched_certificates"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method private updateConsumptionAppMenu()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 691
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    if-nez v3, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v1

    .line 700
    .local v1, currentPageType:I
    iget-object v5, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 701
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCurrentBackend()I

    move-result v0

    .line 703
    .local v0, currentBackendId:I
    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionDescription(I)Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, myCollectionDescription:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 706
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #currentBackendId:I
    .end local v2           #myCollectionDescription:Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 700
    goto :goto_1

    .line 708
    .restart local v0       #currentBackendId:I
    .restart local v2       #myCollectionDescription:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 709
    iget-object v3, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionIcon(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateWishlistAppMenu()V
    .locals 3

    .prologue
    .line 716
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyWishlistItem:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    .line 721
    .local v0, currentPageType:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyWishlistItem:Landroid/view/MenuItem;

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    .prologue
    .line 499
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    return-object v0
.end method

.method public getDfeApi()Lcom/google/android/finsky/api/DfeApi;
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->onBackPressed()V

    .line 467
    return-void
.end method

.method protected handleAuthenticationError(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 911
    instance-of v2, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 912
    check-cast v0, Lcom/android/volley/AuthFailureError;

    .line 913
    .local v0, authFailure:Lcom/android/volley/AuthFailureError;
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v1

    .line 914
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 915
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/MainActivity;->handleUserAuthentication(Landroid/content/Intent;)V

    .line 925
    .end local v0           #authFailure:Lcom/android/volley/AuthFailureError;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->hideLoadingIndicator()V

    .line 923
    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 924
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->showErrorMessage(Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 558
    const/16 v6, 0x1f

    if-ne p1, v6, :cond_0

    const/16 v6, 0x28

    if-ne p2, v6, :cond_0

    .line 561
    const-string v6, "b/5160617: Reinitialize with null accountafter user changed content level"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Lcom/google/android/finsky/activities/MainActivity;->reinitialize(Landroid/accounts/Account;Z)V

    .line 597
    :goto_0
    return-void

    .line 565
    :cond_0
    const/16 v6, 0x21

    if-ne p1, v6, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "requested_doc_id"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, requestedDocId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 569
    .local v0, purchasedDocId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 570
    .local v4, wasDirectPurchase:Z
    if-eqz p3, :cond_1

    .line 571
    const-string v6, "finsky.is_direct_link_purchase"

    invoke-virtual {p3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 573
    const-string v6, "requested_doc_id"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    const/4 p3, 0x0

    .line 576
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "use_direct_purchase"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 577
    .local v3, skipRequested:Z
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 579
    .local v2, sameDoc:Z
    :goto_1
    if-ne p2, v8, :cond_4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 585
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/MainActivity;->setResult(I)V

    .line 586
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->finish()V

    .line 596
    .end local v0           #purchasedDocId:Ljava/lang/String;
    .end local v1           #requestedDocId:Ljava/lang/String;
    .end local v2           #sameDoc:Z
    .end local v3           #skipRequested:Z
    .end local v4           #wasDirectPurchase:Z
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .restart local v0       #purchasedDocId:Ljava/lang/String;
    .restart local v1       #requestedDocId:Ljava/lang/String;
    .restart local v3       #skipRequested:Z
    .restart local v4       #wasDirectPurchase:Z
    :cond_3
    move v2, v5

    .line 577
    goto :goto_1

    .line 587
    .restart local v2       #sameDoc:Z
    :cond_4
    if-nez p2, :cond_2

    if-eqz v3, :cond_2

    .line 592
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/MainActivity;->setResult(I)V

    .line 593
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->finish()V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onBackPressed()V

    .line 629
    :cond_0
    return-void
.end method

.method protected onCleanup()V
    .locals 10

    .prologue
    .line 508
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(I)V

    .line 511
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    .line 513
    iget-boolean v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-nez v8, :cond_1

    .line 514
    iget-object v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 520
    iget-object v8, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->flush()Z

    .line 525
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x7f080033

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 526
    .local v5, contentFrame:Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 527
    .local v1, childCount:I
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 528
    .local v4, childrenToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v1, :cond_2

    .line 529
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 530
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    .line 531
    .local v2, childId:I
    const v8, 0x7f080034

    if-eq v2, v8, :cond_0

    const v8, 0x7f080035

    if-eq v2, v8, :cond_0

    .line 533
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 522
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childCount:I
    .end local v2           #childId:I
    .end local v4           #childrenToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .end local v5           #contentFrame:Landroid/view/ViewGroup;
    .end local v6           #i:I
    :cond_1
    const-string v8, "Unable to clear NavigationManager as state has been saved."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 536
    .restart local v1       #childCount:I
    .restart local v4       #childrenToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    .restart local v5       #contentFrame:Landroid/view/ViewGroup;
    .restart local v6       #i:I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 537
    .local v3, childToRemove:Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 539
    .end local v3           #childToRemove:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->showLoadingIndicator()V

    .line 540
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 230
    const v0, 0x7f040098

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setContentView(I)V

    .line 231
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 234
    if-eqz p1, :cond_0

    .line 235
    const-string v0, "last_shown_error_hash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    .line 237
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 239
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 240
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 243
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->setDefaultKeyMode(I)V

    .line 244
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 633
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 634
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 635
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 636
    sget-object v1, Lcom/google/android/finsky/config/G;->wishlistEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 639
    :cond_0
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 640
    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 641
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 643
    const v1, 0x7f080233

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyCollectionItem:Landroid/view/MenuItem;

    .line 644
    const v1, 0x7f080235

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mMyWishlistItem:Landroid/view/MenuItem;

    .line 646
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateConsumptionAppMenu()V

    .line 647
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateWishlistAppMenu()V

    .line 649
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->terminate()V

    .line 602
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onDestroy()V

    .line 603
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 726
    .line 727
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 756
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    .line 759
    :goto_0
    return v1

    .line 729
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->onMyCollectionSelected()V

    goto :goto_0

    .line 732
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->onMyWishlistSelected()V

    goto :goto_0

    .line 735
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const-class v3, Lcom/google/android/finsky/activities/SettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v2}, Lcom/google/android/finsky/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 739
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->redeemGiftCard()V

    goto :goto_0

    .line 742
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->chooseAccount(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 746
    :pswitch_6
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v2, "help"

    invoke-interface {v0, v3, v3, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingSupportUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 748
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->launchUrlInBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :pswitch_7
    sget-object v0, Lcom/google/android/finsky/config/G;->extraMenuItemUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->launchUrlInBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :pswitch_data_0
    .packed-switch 0x7f08022b
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1001
    packed-switch p1, :pswitch_data_0

    .line 1007
    :goto_0
    return-void

    .line 1003
    :pswitch_0
    const-string v0, "error_package_name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_0

    .line 1001
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 544
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 545
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-nez v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->handleIntent()V

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    .line 552
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 764
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 772
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 766
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    goto :goto_0

    .line 769
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->shareButtonClicked(Landroid/app/Activity;)V

    goto :goto_0

    .line 764
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f08000c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 481
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPause()V

    .line 482
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 483
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    .line 484
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->onPositiveClick(ILandroid/os/Bundle;)V

    .line 994
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 654
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 657
    sget-object v2, Lcom/google/android/finsky/config/G;->extraMenuItemTitle:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 658
    .local v1, extraMenuItemTitle:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 659
    const v2, 0x7f08022f

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 660
    .local v0, extraItem:Landroid/view/MenuItem;
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 661
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 663
    .end local v0           #extraItem:Landroid/view/MenuItem;
    :cond_0
    const v2, 0x7f08022b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    sget-object v2, Lcom/google/android/finsky/config/G;->enableRedeemGiftCardMenu:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    sget-object v2, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/MainActivity;->setDebugActivityEnabled(Z)V

    .line 668
    sget-object v2, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setupDebugMenu(Landroid/view/Menu;)V

    .line 671
    :cond_1
    sget-object v2, Lcom/google/android/finsky/config/G;->dcbDebugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 672
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/MainActivity;->setupDcbDebugMenu(Landroid/view/Menu;)V

    .line 674
    :cond_2
    return v4
.end method

.method protected onReady(Z)V
    .locals 1
    .parameter "shouldHandleIntent"

    .prologue
    .line 364
    new-instance v0, Lcom/google/android/finsky/activities/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/activities/MainActivity$4;-><init>(Lcom/google/android/finsky/activities/MainActivity;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/MainActivity;->checkHasPromoOffers(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onRestart()V

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    .line 490
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 471
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onResume()V

    .line 472
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->refreshPage()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mPageNeedsRefresh:Z

    .line 476
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mNotificationListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/Notifier;->setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V

    .line 477
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 443
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 444
    const-string v0, "last_shown_error_hash"

    iget v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mLastShownErrorHash:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->serialize(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->isTosAccepted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->searchButtonClicked(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onSearchRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1018
    :cond_1
    return v0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 607
    invoke-super {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onStop()V

    .line 612
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mStopPreviewsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 616
    iget v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    if-ne v0, v2, :cond_0

    .line 617
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(I)V

    .line 622
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->drainAllRequests(I)V

    .line 620
    iput v2, p0, Lcom/google/android/finsky/activities/MainActivity;->mSequenceNumberToDrainFrom:I

    goto :goto_0
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 891
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 892
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mStateSaved:Z

    if-eqz v0, :cond_1

    .line 896
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 898
    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refreshOnResume()V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_0

    .line 905
    :cond_2
    const-string v0, "Unknown error with empty error message."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .parameter "breadcrumb"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .parameter "backend"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 460
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateConsumptionAppMenu()V

    .line 461
    invoke-direct {p0}, Lcom/google/android/finsky/activities/MainActivity;->updateWishlistAppMenu()V

    .line 462
    return-void
.end method
