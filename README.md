# DeadLift

NOTE: this was a demo of a [now-fixed bug](https://github.com/phoenixframework/phoenix_live_view/issues/296)

Demo of a possible bug with the way LiveView handles in-page anchor tags.

## Repro Steps

To set up, clone this repo, `mix deps.get`, `npm install --prefix assets`, and `mix phx.server`.

I performed the following steps on MacOS 10.14.6 using Firefox Developer Edition (69.0b5 (64-bit)), Chrome (75.0.3770.142), Safari (12.1.2 (14607.3.9)).

## Correct behavior: controller-rendered page

- Visit `localhost:4000`. This page is controller-rendered.
- Click some of the anchor tags (city names). In all three browsers, this *navigates within the page without triggering requests to the server*.

## Incorrect behavior: LV-rendered page

- Click the link to visit `/widgets/42`. This renders the same template, but under a live view.
- Click some of the anchor tags. This causes the following behavior:
  - In Firefox, a single request is made to the controller, a log statement in the live view's `mount/2` function is printed, but the live view's "loading" state never clears
  - In Chrome and in Safari, many identical requests are made to the server, a log statement in the live view's `mount/2` function is printed many times, but the live view's "loading" state never clears
