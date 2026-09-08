use "pony_test"

actor \nodoc\ Main is TestList
  new create(env: Env) => PonyTest(env, this)
  new make() => None

  fun tag tests(test: PonyTest) =>
    test(_TestGreeting)

class \nodoc\ _TestGreeting is UnitTest
  fun name(): String => "Greeting"

  fun apply(h: TestHelper) =>
    h.assert_eq[String]("Hello from action-testing!", Greeting())
